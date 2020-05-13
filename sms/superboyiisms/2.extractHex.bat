@echo off
set T_FILENAME="TR_Super Boy II (KR).sms"
set SCRIPTNAME="superboyiisms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3B00:100,BB00:100
pause
