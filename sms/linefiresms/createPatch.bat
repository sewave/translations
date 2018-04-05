@echo off 
set T_FILENAME="TR_Line of Fire (E) [!].sms"
set S_FILENAME="Line of Fire (E) [!].sms"
set SCRIPTNAME="linefiresms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
