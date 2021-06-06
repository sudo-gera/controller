from os.path import *
from os import chdir
from os import system
from pathlib import Path
home=str(Path.home())+'/'
def bg_run(f):
	from threading import Thread
	Thread(target=f).start()

port=9999

def load(q):
	a=[]
	while q:
		if   q[0]=='q':
			a.append('')
			q=q[1:]
		elif q[0]=='w':
			a[-1]+=chr(int(q[1:11]))
			q=q[11:]
		else:
			q=q[1:]
	return a
def dump(q):
	return ''.join(['q'+''.join(['w'+('0'*10+str(ord(r)))[-10:] for r in e]) for e in q])+'r'


@bg_run
def run_server_thread():
	to_q={'adm':[],'usr':[]}
	to_b={'adm':'','usr':''}
	from http.server import BaseHTTPRequestHandler, HTTPServer
	class MyServer(BaseHTTPRequestHandler):
		def do_GET(self):
			path=self.path
			ret=''
			path=path[1:]
			fr=path[:3]
			to='usr' if fr=='adm' else 'adm'
			path=path[3:]
			to_b[to]+=path
			if 'r' in to_b[to]:
				to_q[to].append(to_b[to])
				to_b[to]=''
				if to_q[to][-1]==dump(['download']):
					to_q[to].pop()
					if to_q[fr]:
						ret=to_q[fr][0]
						to_q[fr]=to_q[fr][1:]
			# print(to_q,to_b)
			self.send_response(200)
			self.send_header("Content-type", "text/html; charset=utf-8")
			self.end_headers()
			self.wfile.write(ret.encode())
		def log_message(*a):
			pass
	hostname = '0.0.0.0'
	hostport = port
	st=1
	while st:
		try:
			myServer = HTTPServer((hostname, hostport), MyServer)
			st=0
		except:
			hostport+=1
	try:
		myServer.serve_forever()
	except KeyboardInterrupt:
		pass
	myServer.server_close()

def publish_url(url):
	url=url.strip()
	if not url.endswith('/'):
		url+='/'
	for w in [['https://'[:w],'https://'[w:]] for w in range(len('https://'))]+[['http://'[:w],'http://'[w:]] for w in range(len('http://')+1)]:
		if url.startswith(w[1]):
			url=w[0]+url
			break
	open(str(abspath(dirname(__file__)))+'/index.html','w').write(url)
	chdir(str(abspath(dirname(__file__))))
	system(home+'gitpush')

def communicate(a,me='adm'):
	a=dump(a)
	from urllib.request import urlopen
	s=''
	while a:
		s+=urlopen('http://127.0.0.1:9999/'+me+a[:96]).read().decode()
		a=a[96:]
	s=load(s)
	return s
# publish_url('127.0.0.1:9999')

while 1:
	exec(input())
