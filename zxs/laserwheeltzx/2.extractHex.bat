@echo off
set T_FILENAME="TR_Laser Wheel.tzx"
set SCRIPTNAME="laserwheeltzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
