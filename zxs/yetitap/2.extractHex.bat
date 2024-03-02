@echo off
set T_FILENAME="TR_YETI.TAP"
set SCRIPTNAME="yetitap"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
