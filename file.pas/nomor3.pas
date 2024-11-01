program PemilihanSuara;
uses crt;

var
    pemilih, i, jlhA, jlhB: integer;
    pilihan: char;

begin
    clrscr;
    
    writeln ('    Selamat Datang di Perhitungan Pemilihan Suara Rakyat    ');
    writeln ('____________________________________________________________');

    jlhA := 0;
    jlhB := 0;

    write('Masukkan jumlah pemilih: ');
    readln(pemilih);

    repeat
    for i := 1 to pemilih do
        begin
            write('Masukkan pilihan pemilih ', i, ' (A/B): ');
            readln(pilihan);
        
            if (pilihan = 'A') or (pilihan = 'a') then
            jlhA := jlhA + 1
            else if (pilihan = 'B') or (pilihan = 'b') then
            jlhB := jlhB + 1
            else
            writeln('Pilihan tidak valid, silakan masukkan A atau B.');
        end;
    until (pilihan = 'A') or (pilihan = 'a') or (pilihan = 'B') or (pilihan = 'b');

    writeln('Jumlah pemilih yang memilih opsi A: ', jlhA);
    writeln('Jumlah pemilih yang memilih opsi B: ', jlhB);
end.
