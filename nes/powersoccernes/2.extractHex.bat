@echo off
set T_FILENAME="TR_Power Soccer (Japan).nes"
set SCRIPTNAME="powersoccernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F220:20,F290:10,9310:60,8080:120,F910:60,DC60:30
pause
