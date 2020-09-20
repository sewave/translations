@echo off
set T_FILENAME="Alien 3 (UE) [!].gb"
set SCRIPTNAME="alien3gb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
