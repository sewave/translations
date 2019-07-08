@echo off
set T_FILENAME="TR_Dragon Crystal (U) [!].gg"
set SCRIPTNAME="dragoncrystalgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 804C:8
pause
