@echo off
set T_FILENAME="TR_Smart Ball (USA).sfc"
set SCRIPTNAME="smartballsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
