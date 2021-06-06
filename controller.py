from os.path import *
from os import chdir
from os import system
from pathlib import Path
home=str(Path.home())+'/'
def bg_run(f):
	from threading import Thread
	Thread(target=f).start()

# @bg_run
def run_server_thread():
	port=9999
	send_q=[]
	read_q=[]
	from http.server import BaseHTTPRequestHandler, HTTPServer
	class MyServer(BaseHTTPRequestHandler):
		def do_GET(self):
			path=self.path
			ret='---'


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

publish_url('127.0.0.1:9999')