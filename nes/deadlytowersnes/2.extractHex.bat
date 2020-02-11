@echo off
set T_FILENAME="TR_Deadly Towers (USA).nes"
set SCRIPTNAME="deadlytowersnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1BC10:40
pause
