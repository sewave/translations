@echo off
set T_FILENAME="MechWarrior 3050 (USA).sfc"
set SCRIPTNAME="mechwarrior3050sfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
