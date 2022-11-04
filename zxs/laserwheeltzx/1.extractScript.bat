@echo off
set T_FILENAME="Laser Wheel.tzx"
set SCRIPTNAME="laserwheeltzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
