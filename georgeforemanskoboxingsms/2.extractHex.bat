@echo off
set T_FILENAME="TR_George Foreman's KO Boxing (EB) [!].sms"
set SCRIPTNAME="georgeforemanskoboxingsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 315C0:180,3276D:20
pause
