@echo off 
set T_FILENAME="TR_Bloody Wolf (U).pce"
set S_FILENAME="Bloody Wolf (U).pce"
set SCRIPTNAME="bloodywolfpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
