@echo off
set T_FILENAME="TR_Battletoads (U) [!].gg"
set S_FILENAME="Battletoads (U) [!].gg"
set SCRIPTNAME="battletoadsgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
