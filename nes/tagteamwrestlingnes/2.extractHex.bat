@echo off
set T_FILENAME="TR_Tag Team Wrestling (U) [!].nes"
set SCRIPTNAME="tagteamwrestlingnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9310:100
pause
