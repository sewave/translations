@echo off
set T_FILENAME="TR_Pac-In-Time (USA) (SGB Enhanced).gb"
set SCRIPTNAME="pacintimegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
