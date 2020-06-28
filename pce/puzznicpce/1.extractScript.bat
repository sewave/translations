@echo off
set T_FILENAME="Puzznic (Japan).pce"
set SCRIPTNAME="puzznicpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
