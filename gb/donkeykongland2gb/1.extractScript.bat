@echo off
set T_FILENAME="Donkey Kong Land 2 (UE) [S][!].gb"
set SCRIPTNAME="donkeykongland2gb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
