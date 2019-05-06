@echo off
set T_FILENAME="1261 - Disney's Magical Quest 2 Starring Mickey and Minnie (U)(Evasion).gba"
set SCRIPTNAME="1261disneysmagicalquest2starringmickeyandminniegba"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
