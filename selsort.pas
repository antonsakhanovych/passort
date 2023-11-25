unit SelSort;

interface

procedure selectionSort (var arr: array of integer; size: integer );

implementation

procedure swapInd (var arr: array of integer; i: integer; mini: integer);
var
   temp: integer;
begin
   temp := arr[i];
   arr[i] := arr[mini];
   arr[mini] := temp;
end;

function indexMin (var arr: array of integer; fromIndex: integer; size: integer): integer;
var
   minIndex: integer;
begin
   minIndex := fromIndex;
   for fromIndex := fromIndex + 1 to size - 1 do
   begin
      if arr[fromIndex] < arr[minIndex] then
         minIndex := fromIndex;
   end;
   exit (minIndex);
end;

procedure selectionSort (var arr : array of integer; size: integer );
var
   i: integer = 0;
   minind: integer;
begin
   while (i < size) do
   begin
      minind := indexmin (arr, i, size);
      swapind(arr, i, minind);
      inc(i);
   end;
end;

end.
