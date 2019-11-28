@echo off
set T_FILENAME="TR_C-So! (1985)(Pony Canyon).rom"
set SCRIPTNAME="csorom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 36D9:180,3B20:20
pause
