@echo off 
set T_FILENAME="TR_Mortal Kombat (E) [!].sms"
set SCRIPTNAME="mk1sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6A0FA:C0
pause 
