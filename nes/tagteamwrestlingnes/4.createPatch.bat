@echo off
set T_FILENAME="TR_Tag Team Wrestling (U) [!].nes"
set S_FILENAME="Tag Team Wrestling (U) [!].nes"
set SCRIPTNAME="tagteamwrestlingnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
