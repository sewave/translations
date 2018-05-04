@echo off
set T_FILENAME="Amazing Spider-Man 2, The (UE) [!].gb"
set SCRIPTNAME="amazingspiderman2thegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
