@echo off
set T_FILENAME="TR_Chuck Rock (U) [c][!].gen"
set SCRIPTNAME="chuckrocksmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
