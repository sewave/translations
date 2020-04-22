@echo off
set T_FILENAME="Lethal Weapon (U) [!].smc"
set SCRIPTNAME="lethalweaponsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
