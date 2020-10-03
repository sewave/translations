@echo off
set T_FILENAME="TR_Dream T.V. (USA).sfc"
set S_FILENAME="Dream T.V. (USA).sfc"
set SCRIPTNAME="dreamtvsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
