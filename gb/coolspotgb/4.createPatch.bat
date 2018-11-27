@echo off
set T_FILENAME="TR_Cool Spot (U) [!].gb"
set S_FILENAME="Cool Spot (U) [!].gb"
set SCRIPTNAME="coolspotgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
