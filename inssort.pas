unit InsSort;

interface

procedure insertionSort(var arr: array of integer);

implementation

procedure insertionSort(var arr: array of integer);
var
   currInd : integer;
   nextInd : integer;
   temp    : integer;
   size    : integer;
begin
   size := length(arr);
   for nextInd := 1 to size - 1 do
   begin
      currInd := nextInd;
      temp := arr [nextInd];
      while (currInd > 0) and (temp < arr [currInd - 1]) do
      begin
         arr[currInd] := arr [currInd - 1];
         dec(currInd);
      end;
      arr[currInd] := temp;
   end;
end;

end.
