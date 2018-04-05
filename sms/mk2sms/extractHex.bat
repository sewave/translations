@echo off 
set T_FILENAME="TR_Mortal Kombat 2 (E) [!].sms"
set SCRIPTNAME="mk2sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 68760:C0
pause 
