@echo off
set T_FILENAME="TR_King & Balloon (1984) (Namcot) (J).rom"
set S_FILENAME="King & Balloon (1984) (Namcot) (J).rom"
set SCRIPTNAME="kingballoonrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
