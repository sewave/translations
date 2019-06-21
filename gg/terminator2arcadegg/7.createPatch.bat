@echo off
set T_FILENAME="TR_T2 - The Arcade Game (U) [!].gg"
set S_FILENAME="T2 - The Arcade Game (U) [!].gg"
set SCRIPTNAME="terminator2arcadegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
