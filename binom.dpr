program binom;

{$APPTYPE CONSOLE}
const maxn = 66;

var
n:integer;

function C(n,m:integer):int64;
begin
  if (m=0)or(m=n) then
    Result:=1
  else
    Result:=C(n-1,m)+C(n-1,m-1);
end;

procedure Count(n: integer);
var
  m:integer;
begin
  for m := 0 to n do
  begin
    Write( C(n,m), ' ');
  end;
end;


begin
  writeln('Please, enter n, 0<=n<=66');

  repeat
  write('n = ');
  readln(n);
  until (n>0) and (n<67);
  Count(n);
  readln;
end.
