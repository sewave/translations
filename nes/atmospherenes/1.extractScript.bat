@echo off
set T_FILENAME="Atmo Sphere.nes"
set SCRIPTNAME="atmospherenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
