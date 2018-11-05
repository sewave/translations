@echo off
set T_FILENAME="TR_Sonic Chaos (U) [!].gg"
set SCRIPTNAME="sonicchaosgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
