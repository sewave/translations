@echo off
set T_FILENAME="Alien vs. Predator (U).smc"
set SCRIPTNAME="alienvspredatorsnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
