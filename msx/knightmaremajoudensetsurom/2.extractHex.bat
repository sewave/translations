@echo off
set T_FILENAME="TR_Knightmare - Majou Densetsu (Japan).rom"
set SCRIPTNAME="knightmaremajoudensetsurom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 619:8,6C6:8
pause
