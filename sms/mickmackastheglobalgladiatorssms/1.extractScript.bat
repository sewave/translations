@echo off
set T_FILENAME="Mick & Mack as The Global Gladiators (E) [!].sms"
set SCRIPTNAME="mickmackastheglobalgladiatorssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
