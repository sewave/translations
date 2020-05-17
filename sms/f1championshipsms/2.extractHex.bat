@echo off
set T_FILENAME="TR_F1 Championship (EB) [!].sms"
set SCRIPTNAME="f1championshipsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex DB60:100
pause
