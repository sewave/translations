@echo off
set T_FILENAME="TR_Alien vs. Predator (U).smc"
set S_FILENAME="Alien vs. Predator (U).smc"
set SCRIPTNAME="alienvspredatorsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
