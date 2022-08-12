@echo off
set T_FILENAME="TR_Max (Europe).gb"
set SCRIPTNAME="maxgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
