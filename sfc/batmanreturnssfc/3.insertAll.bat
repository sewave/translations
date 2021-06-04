@echo off
set T_FILENAME="TR_Batman Returns (USA).sfc"
set S_FILENAME="Batman Returns (USA).sfc"
set SCRIPTNAME="batmanreturnssfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Big.tbl tr_%SCRIPTNAME%Big.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
