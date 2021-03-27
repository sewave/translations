@echo off
set T_FILENAME="galaxy_patrol.nes"
set SCRIPTNAME="galaxypatrolnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
