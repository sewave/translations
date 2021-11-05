@echo off
set T_FILENAME="TR_Wonder Momo (Japan) [T+ENG].pce"
set S_FILENAME="Wonder Momo (Japan) [T+ENG].pce"
set SCRIPTNAME="wondermomopce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
