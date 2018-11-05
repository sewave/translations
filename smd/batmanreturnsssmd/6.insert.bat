@echo off
set T_FILENAME="TR_Batman Returns (W) [!].gen"
set S_FILENAME="Batman Returns (W) [!].gen"
set SCRIPTNAME="batmanreturnsssmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
