@echo off
set T_FILENAME="Yazzie.rom"
set SCRIPTNAME="yazzierom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
