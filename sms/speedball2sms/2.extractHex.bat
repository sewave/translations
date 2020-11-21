@echo off
set T_FILENAME="TR_Speedball 2 (Europe).sms"
set SCRIPTNAME="speedball2sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
