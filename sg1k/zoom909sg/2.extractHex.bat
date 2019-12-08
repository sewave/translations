@echo off
set T_FILENAME="TR_Zoom 909 (Taiwan).sg"
set SCRIPTNAME="zoom909sg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
