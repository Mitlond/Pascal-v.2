program mat;
    const
      N=5;
      M=3;  
var
  a:array[1..N] of array[1..M] of Integer;
  i,j,d,k,p,sumtmp,temp,sp,tp,x,r:Integer;
  s:array[1..M] of Integer;
begin
randomize;
  for i:=1 to N do
    begin
      for j:=1 to M do
        begin
         a[i][j]:=random(10);
         write(a[i][j]);
        end;
        writeln;
    end;  
    { суммуируем }
    d:=1;
    s[d]:=0;
     for k:=1 to N do
    begin
      for p:=1 to M do
        begin
         sumtmp:=a[k][p]; 
         s[d]:=s[d]+sumtmp;
        end;
        writeln(s[d]);
        if (d<>M)
        then
        d:=d+1;
    end; 
    begin
    if s[d]>s[d+1]
    then
    temp:=s[d+1];
    s[d+1]:=s[d];
    s[d]:=temp;
    end;
    begin
    for r:=1 to M do
    begin
    tp:=a[x][r+1];
    a[x][r+1]:=a[x][r];
    a[x][r]:=tp;
    end;
    end;
end.
  
