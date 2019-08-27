@echo off
set T_FILENAME="TR_Tennis Ace (Europe).sms"
set SCRIPTNAME="tennisacesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F8D0:600
pause
