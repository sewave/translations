@echo off
set T_FILENAME="TR_Galaxian (Japan) (Rev A).nes"
set S_FILENAME="Galaxian (Japan) (Rev A) [EXP].nes"
set SCRIPTNAME="galaxiannes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
