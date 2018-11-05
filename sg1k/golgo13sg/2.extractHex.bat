@echo off
set T_FILENAME="TR_Golgo 13 (SG-1000).sg"
set SCRIPTNAME="golgo13sg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1A86:C0
pause
