@echo off
set T_FILENAME="TR_Dragon Warrior (U) (PRG1) [!].nes"
set SCRIPTNAME="dragonwarriornes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
