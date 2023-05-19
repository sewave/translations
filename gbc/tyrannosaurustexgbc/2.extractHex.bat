@echo off
set T_FILENAME="TR_TTEX.GBC"
set SCRIPTNAME="tyrannosaurustexgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1C96A9:120
pause
