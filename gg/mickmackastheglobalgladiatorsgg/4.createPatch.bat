@echo off
set T_FILENAME="TR_Mick & Mack as the Global Gladiators (U) [!].gg"
set S_FILENAME="Mick & Mack as the Global Gladiators (U) [!].gg"
set SCRIPTNAME="mickmackastheglobalgladiatorsgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
