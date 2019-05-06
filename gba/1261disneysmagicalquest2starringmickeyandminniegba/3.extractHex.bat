@echo off
set T_FILENAME="TR_1261 - Disney's Magical Quest 2 Starring Mickey and Minnie (U)(Evasion).gba"
set SCRIPTNAME="1261disneysmagicalquest2starringmickeyandminniegba"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
