@echo off
set T_FILENAME="TR_Zombie Hunter (Japan) [T+ENG].nes"
set S_FILENAME="Zombie Hunter (Japan) [T+ENG].nes"
set SCRIPTNAME="zombiehunternes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
