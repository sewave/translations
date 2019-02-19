@echo off
set T_FILENAME="TR_Road Rash (U).gg"
set SCRIPTNAME="roadrashgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
