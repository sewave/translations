@echo off
set T_FILENAME="TR_Dragon Warrior (U) (PRG1) [!].nes"
set SCRIPTNAME="dragonwarriornes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 114E0:10
pause
