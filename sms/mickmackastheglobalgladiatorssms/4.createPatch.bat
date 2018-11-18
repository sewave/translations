@echo off
set T_FILENAME="TR_Mick & Mack as The Global Gladiators (E) [!].sms"
set S_FILENAME="Mick & Mack as The Global Gladiators (E) [!].sms"
set SCRIPTNAME="mickmackastheglobalgladiatorssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
