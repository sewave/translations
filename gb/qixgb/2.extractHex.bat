@echo off
set T_FILENAME="TR_QIX (World).gb"
set SCRIPTNAME="qixgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
