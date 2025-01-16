program Takeoffgame (Input,Output);
 
label
     
     1000;
 
var
 
      r,c,f : integer;
      g,w : real;
 
begin
 
clrscr;
gotoxy (20,10);
 
writeln ('STARSHIP TAKEOFF!');
writeln;
g := random*20;
w := random*40;
r := trunc (g*w);
gotoxy (10,12);
writeln ('The gravity on this planet is ',g:4:2);

gotoxy(3,13);
writeln ('input the thrust required to enter orbit without ');
gotoxy(17,14);
writeln ('destroying the ship ');

for c :=1 to 10 do

begin

       read (f);

       if f > r then writeln ('  Too much!');
            if f < r then writeln ('  Not enough!');
                 if f = r then goto 1000;
                      writeln ('try again');
                              end;

clrscr;
gotoxy(10,10);
writeln ('   You crashed back to the surface');
gotoxy(10,11);
writeln ('The aliens got you and you were PROBED!');
gotoxy(10,12);
writeln ('        some hero you are!');

exit;



1000:
     clrscr;
     gotoxy(10,10);
     writeln ('good take off, you escaped the surface without');
     gotoxy(10,11);
     writeln ('             destroying the ship');
end.
