@echo off
set T_FILENAME="Flight of the Intruder (USA).nes"
set SCRIPTNAME="flightoftheintrudernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
