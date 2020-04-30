@echo off
set T_FILENAME="TR_Halley Wars (U) [!].gg"
set SCRIPTNAME="halleywarsgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
