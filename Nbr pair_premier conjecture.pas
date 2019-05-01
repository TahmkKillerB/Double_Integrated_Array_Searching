Program Conj_verif;
Uses Wincrt;

Const
  delai = 500;
Var
  i,j,k,n: Longint;
  Bol: Boolean;
Function prime(N:Longint): Boolean;
Begin
  Prime := Sqr(n) Mod 24 = 1 ;
End;
Begin
  Writeln(
'Ce programme affichera chaque entier pair entre 4 et N (à saisir) sous la forme de la somme de 2 entiers premiers.'
  );
  Repeat
    Write('Veuillez saisir N (Doit etre pair et supérieur à 2) : ');
    Readln(N);
  Until (N>2) And (Not(Odd(N)));
  Writeln('4 = 2 + 2');
  i := 4;
  Repeat
    delay(Delai);
    i := i+2;
    Write(i,' = ');
    j := 2;
    Repeat
      j := j+1;
      k := i-j;
      Bol := (i>1) And (j>1) And Prime(j) And Prime(k);
    Until Bol;
    Writeln(j,' + ',k);
  Until i=N;
End.
