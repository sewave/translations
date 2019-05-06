@echo off
set T_FILENAME="TR_1261 - Disney's Magical Quest 2 Starring Mickey and Minnie (U)(Evasion).gba"
set S_FILENAME="1261 - Disney's Magical Quest 2 Starring Mickey and Minnie (U)(Evasion).gba"
set SCRIPTNAME="1261disneysmagicalquest2starringmickeyandminniegba"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
