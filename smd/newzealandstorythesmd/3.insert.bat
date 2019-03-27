@echo off
set T_FILENAME="TR_New Zealand Story, The (J) [!].gen"
set S_FILENAME="New Zealand Story, The (J) [!].gen"
set SCRIPTNAME="newzealandstorythesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
