@echo off
set T_FILENAME="TR_1261 - Disney's Magical Quest 2 Starring Mickey and Minnie (U)(Evasion).gba"
set S_FILENAME="1261 - Disney's Magical Quest 2 Starring Mickey and Minnie (U)(Evasion).gba"
set SCRIPTNAME="1261disneysmagicalquest2starringmickeyandminniegba"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
