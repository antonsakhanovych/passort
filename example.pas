program SortingMain;

uses SelSort, ArrProcs;

var
   arr: array [0..9] of integer;
begin
   randArray (arr);
   writeln('Selection sort');
   write('Before: ');
   printArray (arr);
   selectionSort (arr, 10);
   write ('After: ');
   printArray (arr);
end.
