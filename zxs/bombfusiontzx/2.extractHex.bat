@echo off
set T_FILENAME="TR_Bomb Fusion.tzx"
set SCRIPTNAME="bombfusiontzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7681:28
pause
