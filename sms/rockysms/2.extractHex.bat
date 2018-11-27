@echo off
set T_FILENAME="TR_Rocky (World).sms"
set SCRIPTNAME="rockysms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1B90A:8
pause
