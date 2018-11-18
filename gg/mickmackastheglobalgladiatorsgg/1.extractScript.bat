@echo off
set T_FILENAME="Mick & Mack as the Global Gladiators (U) [!].gg"
set SCRIPTNAME="mickmackastheglobalgladiatorsgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
