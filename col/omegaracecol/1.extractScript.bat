@echo off
set T_FILENAME="Omega Race (1981-83) (Midway).col"
set SCRIPTNAME="omegaracecol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
