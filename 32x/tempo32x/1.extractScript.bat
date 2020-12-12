@echo off
set T_FILENAME="Tempo (Japan, USA).32x"
set SCRIPTNAME="tempo32x"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
