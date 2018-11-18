@echo off
set T_FILENAME="TR_Mick & Mack as The Global Gladiators (E) [!].sms"
set SCRIPTNAME="mickmackastheglobalgladiatorssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
