@echo off
set T_FILENAME="TR_Great Golf (JUE) [!].sms"
set SCRIPTNAME="greatgolfsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
