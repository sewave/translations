@echo off
set T_FILENAME="TR_Jordan vs Bird (USA, Europe) (v1.1).md"
set S_FILENAME="Jordan vs Bird (USA, Europe) (v1.1).md"
set SCRIPTNAME="jordanvsbirdsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
