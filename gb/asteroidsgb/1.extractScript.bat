@echo off
set T_FILENAME="Asteroids (U) [M][!].gb"
set SCRIPTNAME="asteroidsgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
