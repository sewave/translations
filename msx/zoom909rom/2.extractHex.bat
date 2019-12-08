@echo off
set T_FILENAME="TR_Zoom 909 (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="zoom909rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
