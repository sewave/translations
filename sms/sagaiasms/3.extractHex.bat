@echo off
set T_FILENAME="TR_Sagaia (E) [!].sms"
set SCRIPTNAME="sagaiasms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 381A0:100,394E0:600
pause
