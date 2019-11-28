@echo off
set T_FILENAME="TR_Hang On (1985) (Pony Cannon) (J).rom"
set S_FILENAME="Hang On (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="hangonrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
