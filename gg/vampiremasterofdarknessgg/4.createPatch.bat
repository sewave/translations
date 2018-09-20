@echo off
set T_FILENAME="TR_Vampire - Master of Darkness (U) [!].gg"
set S_FILENAME="Vampire - Master of Darkness (U) [!].gg"
set SCRIPTNAME="vampiremasterofdarknessgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
