@echo off
set T_FILENAME="Mick & Mack as the Global Gladiators (U) [!].gen"
set SCRIPTNAME="mickmackastheglobalgladiatorssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
