@echo off
set T_FILENAME="TR_T2 - The Arcade Game (U).smc"
set S_FILENAME="T2 - The Arcade Game (U).smc"
set SCRIPTNAME="terminator2arcadesnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
