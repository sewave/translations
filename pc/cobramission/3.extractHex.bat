@echo off
set T_FILENAME="TR_CM.EXE"
set SCRIPTNAME="cobramission"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
