@echo off
set T_FILENAME="TR_LOBO.sfc"
set SCRIPTNAME="lobosfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
