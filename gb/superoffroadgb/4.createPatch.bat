@echo off
set T_FILENAME="TR_Super Off Road (U) [!].gb"
set S_FILENAME="Super Off Road (U) [!].gb"
set SCRIPTNAME="superoffroadgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
