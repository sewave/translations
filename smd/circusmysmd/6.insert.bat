@echo off
set T_FILENAME="TR_Great Circus Mystery, The - Starring Mickey & Minnie (U) [!].gen"
set S_FILENAME="Great Circus Mystery, The - Starring Mickey & Minnie (U) [!].gen"
set SCRIPTNAME="circusmysmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
