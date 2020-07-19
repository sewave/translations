@echo off
set T_FILENAME="Night Creatures (USA).pce"
set SCRIPTNAME="nightcreaturespce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
