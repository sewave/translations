@echo off
set T_FILENAME="Bloody Wolf (USA).pce"
set SCRIPTNAME="bloodywolfpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
