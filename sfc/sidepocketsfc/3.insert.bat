@echo off
set T_FILENAME="TR_Side Pocket (U).smc"
set S_FILENAME="Side Pocket (U).smc"
set SCRIPTNAME="sidepocketsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause