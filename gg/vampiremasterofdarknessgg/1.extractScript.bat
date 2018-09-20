@echo off
set T_FILENAME="Vampire - Master of Darkness (U) [!].gg"
set SCRIPTNAME="vampiremasterofdarknessgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
