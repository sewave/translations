@echo off
set T_FILENAME="Devil's Crush (USA).pce"
set SCRIPTNAME="devilscrushpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
