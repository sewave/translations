@echo off
set T_FILENAME="Missile Command (U) [M][!].gb"
set SCRIPTNAME="missilecommandgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
