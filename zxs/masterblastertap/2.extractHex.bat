@echo off
set T_FILENAME="TR_MBLASTER.TAP"
set SCRIPTNAME="masterblastertap"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
