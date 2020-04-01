@echo off
set T_FILENAME="TR_Galaxy Force II (W) (REV01) [!].gen"
set S_FILENAME="Galaxy Force II (W) (REV01) [!].gen"
set SCRIPTNAME="galaxyforceiismd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
