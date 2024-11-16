@echo off
set T_FILENAME="TR_Bloody Wolf (USA).pce"
set SCRIPTNAME="bloodywolfpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 50A20:120
pause
