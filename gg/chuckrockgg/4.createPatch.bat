@echo off
set T_FILENAME="TR_Chuck Rock (U) [!].gg"
set S_FILENAME="Chuck Rock (U) [!].gg"
set SCRIPTNAME="chuckrockgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
