@echo off
set T_FILENAME="Alleyway (W) [!].gb"
set SCRIPTNAME="alleywaygb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
