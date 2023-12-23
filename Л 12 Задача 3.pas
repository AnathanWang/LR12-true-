var
  F_in,F_out: Text;
  S,a: String;
begin
 Write('S: ');
 Readln(S);
 Assign(F_in,'C:\input.txt');
 Reset(F_in);
 Assign(F_out,'C:\output.txt');
 Rewrite(F_out);
 While not eof(F_in) do
  begin
   Readln(F_in,a);
   Writeln(F_out,a);
  end;
  Rewrite(F_out);
 Writeln(F_out,S);
 Close(F_in);
 Close(F_out);
 Erase(F_in);
 Rename(F_out,'C:\ШАРАГА\Основы алгоритмизации\LR1112\данные\input.txt');
end.