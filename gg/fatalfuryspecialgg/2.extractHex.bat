@echo off
set T_FILENAME="TR_Fatal Fury Special (U) [!].gg"
set SCRIPTNAME="fatalfuryspecialgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
