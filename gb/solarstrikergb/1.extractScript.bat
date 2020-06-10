@echo off
set T_FILENAME="SolarStriker (W) [!].gb"
set SCRIPTNAME="solarstrikergb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
