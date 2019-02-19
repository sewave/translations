@echo off
set T_FILENAME="TR_Road Rash (E) [!].sms"
set SCRIPTNAME="roadrashsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
