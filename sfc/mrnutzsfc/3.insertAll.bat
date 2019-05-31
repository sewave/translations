@echo off
set T_FILENAME="TR_Mr. Nutz (U).smc"
set S_FILENAME="Mr. Nutz (U).smc"
set SCRIPTNAME="mrnutzsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
