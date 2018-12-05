@echo off
set T_FILENAME="TR_Junction (U).gg"
set SCRIPTNAME="junctiongg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
