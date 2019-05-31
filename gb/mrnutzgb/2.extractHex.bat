@echo off
set T_FILENAME="TR_Mr Nutz (U).gb"
set SCRIPTNAME="mrnutzgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
