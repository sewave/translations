@echo off
set T_FILENAME="TR_Rampage (USA, Europe).sms"
set SCRIPTNAME="rampagesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
