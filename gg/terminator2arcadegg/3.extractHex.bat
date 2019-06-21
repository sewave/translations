@echo off
set T_FILENAME="TR_T2 - The Arcade Game (U) [!].gg"
set SCRIPTNAME="terminator2arcadegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
