@echo off
set T_FILENAME="TR_Aaahh!!! Real Monsters (USA).sfc"
set S_FILENAME="Aaahh!!! Real Monsters (USA).sfc"
set SCRIPTNAME="aaahhrealmonsterssfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
