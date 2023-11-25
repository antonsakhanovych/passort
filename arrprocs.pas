unit ArrProcs;

interface

procedure printArray (var arr : array of Integer);

procedure randArray (var arr : array of Integer );

implementation

procedure printarray (var arr : array of integer);
var
   i : integer;
begin
   write ('[ ');
   for i:=0 to length (arr) - 1 do
      write (arr[i], ' ');
   writeln (']');
end;

procedure randArray (var arr : array of Integer );
var
   i: integer;
begin
   randomize();
   for i := 0 to 9 do
      arr[i] := random(500);
end;

end.
