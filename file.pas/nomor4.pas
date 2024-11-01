program KembalianKasir;
uses crt;

var
    kembalian: longint;
    jumlahlembar, i: integer; 
    lembar: array[1..10] of longint ;

begin
clrscr;
    
    writeln('    Penghitung Lembar/Koin Kembalian    ');
    writeln('________________________________________');
    
    lembar[1] := 100000;
    lembar[2] := 75000;
    lembar[3] := 50000;
    lembar[4] := 20000;
    lembar[5] := 10000;
    lembar[6] := 5000;
    lembar[7] := 2000;
    lembar[8] := 1000;
    lembar[9] := 500;
    lembar[10] := 200;
  
    write('Masukkan jumlah kembalian: ');
    readln(kembalian);

    jumlahlembar := 0;
    for i := 1 to 10 do
        begin
            while (kembalian >= lembar[i]) do
                begin
                    kembalian := kembalian - lembar[i];
                    jumlahlembar := jumlahlembar + 1; 
                end;
        end;

    writeln('jumlah minimum lembaran atau koin: ', jumlahlembar);
end.