@echo off
set T_FILENAME="Gomola Speed (Japan).pce"
set SCRIPTNAME="gomolaspeedpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
