@echo off
set T_FILENAME="TR_Vampire - Master of Darkness (U) [!].gg"
set SCRIPTNAME="vampiremasterofdarknessgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
