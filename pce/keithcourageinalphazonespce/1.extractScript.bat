@echo off
set T_FILENAME="Keith Courage in Alpha Zones (U).pce"
set SCRIPTNAME="keithcourageinalphazonespce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
