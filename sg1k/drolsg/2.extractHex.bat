@echo off
set T_FILENAME="TR_Drol (SG-1000).sg"
set SCRIPTNAME="drolsg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
