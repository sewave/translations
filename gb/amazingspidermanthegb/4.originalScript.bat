@echo off
set T_FILENAME="Amazing Spider-Man, The (UE) [!].gb"
set SCRIPTNAME="amazingspidermanthegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
