@echo off
set T_FILENAME="TR_Wonder Boy - The Dragon's Trap (E) [!].gg"
set S_FILENAME="Wonder Boy - The Dragon's Trap (E) [!].gg"
set SCRIPTNAME="wonderboythedragonstrapgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
