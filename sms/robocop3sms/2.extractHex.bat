@echo off
set T_FILENAME="TR_RoboCop 3 (Europe).sms"
set SCRIPTNAME="robocop3sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 47B0:20,48D0:20,4F70:80
pause
