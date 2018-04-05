@echo off
set T_FILENAME="TR_Ristar the Shooting Star (U) [!].gg"
set SCRIPTNAME="ristargg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
