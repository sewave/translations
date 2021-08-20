@echo off
set T_FILENAME="Air Cavalry (USA).sfc"
set SCRIPTNAME="aircavalrysfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
