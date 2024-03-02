@echo off
set T_FILENAME="TR_Cowboy Kidz.tzx"
set SCRIPTNAME="cowboykidztzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2B0B:18,2C03:28
pause
