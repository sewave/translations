@echo off
set T_FILENAME="TR_Mick & Mack as the Global Gladiators (U) [!].gen"
set SCRIPTNAME="mickmackastheglobalgladiatorssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
