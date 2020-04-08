@echo off
set T_FILENAME="TR_Pac-In-Time (Prototype) [!].gg"
set SCRIPTNAME="pacintimegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
