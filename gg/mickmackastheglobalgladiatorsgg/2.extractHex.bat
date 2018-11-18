@echo off
set T_FILENAME="TR_Mick & Mack as the Global Gladiators (U) [!].gg"
set SCRIPTNAME="mickmackastheglobalgladiatorsgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
