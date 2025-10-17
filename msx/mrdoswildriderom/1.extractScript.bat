@echo off
set T_FILENAME="Mr. Do's Wild Ride (Japan).rom"
set SCRIPTNAME="mrdoswildriderom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
