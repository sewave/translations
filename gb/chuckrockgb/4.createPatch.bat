@echo off
set T_FILENAME="TR_Chuck Rock (U) [!].gb"
set S_FILENAME="Chuck Rock (U) [!].gb"
set SCRIPTNAME="chuckrockgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
