@echo off 
set T_FILENAME="TR_Mortal Kombat 3 (E) [!].sms"
set SCRIPTNAME="mk3sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
