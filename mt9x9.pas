{ 9x9 multiplication table in Pascal }
{ CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2018. }
{ fpc mt9x9.pas ; ./mt9x9 }

program mt9x9;
uses SysUtils;
var
    i, j, k : Integer;
begin
    for i in [1, 4, 7] do
    begin
        for j := 1 to 9 do
        begin
            for k := i to i+2 do
            begin
                Write(Format('%dx%d=%2d'#9, [k, j, k*j]));
            end;
            Write(#10);
        end;
        Writeln;
    end;
end.
