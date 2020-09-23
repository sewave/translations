@echo off
set T_FILENAME="TR_Taito Chase H.Q. (Europe).sms"
set SCRIPTNAME="taitochasehqsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
