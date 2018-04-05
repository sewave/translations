@echo off 
set T_FILENAME="TR_Bloody Wolf (U).pce"
set SCRIPTNAME="bloodywolfpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
