@echo off
set T_FILENAME="TR_Micro Machines 2 - Turbo Tournament (Europe) (J-Cart).md"
set SCRIPTNAME="micromachines2turbotournamentsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
