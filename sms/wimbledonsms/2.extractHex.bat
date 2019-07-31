@echo off
set T_FILENAME="TR_Wimbledon (Europe).sms"
set SCRIPTNAME="wimbledonsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 165F6:20
pause
