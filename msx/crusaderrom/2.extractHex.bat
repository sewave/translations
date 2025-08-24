@echo off
set T_FILENAME="TR_Crusader (Japan).rom"
set SCRIPTNAME="crusaderrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 72F0:10,73A8:8,73E0:18
pause
