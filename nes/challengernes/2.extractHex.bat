@echo off
set T_FILENAME="TR_Challenger (Japan).nes"
set SCRIPTNAME="challengernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8EF0:20,8FF0:20
pause
