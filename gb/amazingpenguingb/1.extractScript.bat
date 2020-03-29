@echo off
set T_FILENAME="Amazing Penguin (UE) [!].gb"
set SCRIPTNAME="amazingpenguingb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
