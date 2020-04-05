@echo off
set T_FILENAME="TR_Super Hunchback (U).gb"
set SCRIPTNAME="superhunchbackgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
