@echo off
set T_FILENAME="TR_OutRun Europa (E) [!].sms"
set SCRIPTNAME="outruneuropasms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 17AE0:80,17EC0:20,20000:400
pause
