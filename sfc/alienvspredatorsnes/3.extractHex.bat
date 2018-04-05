@echo off
set T_FILENAME="TR_Alien vs. Predator (U).smc"
set SCRIPTNAME="alienvspredatorsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex DD97C-DD9FB
pause
