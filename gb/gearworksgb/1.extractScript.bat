@echo off
set T_FILENAME="Gear Works (U) [!].gb"
set SCRIPTNAME="gearworksgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
