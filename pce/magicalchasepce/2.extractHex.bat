@echo off
set T_FILENAME="TR_Magical Chase (U) [!].pce"
set SCRIPTNAME="magicalchasepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
