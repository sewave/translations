@echo off
set T_FILENAME="TR_Wonder Boy - The Dragon's Trap (E) [!].gg"
set SCRIPTNAME="wonderboythedragonstrapgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
