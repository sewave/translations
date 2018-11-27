@echo off
set T_FILENAME="TR_Cool Spot (U) [!].gg"
set S_FILENAME="Cool Spot (U) [!].gg"
set SCRIPTNAME="coolspotgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
