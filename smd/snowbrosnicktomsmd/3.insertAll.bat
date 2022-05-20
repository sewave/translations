@echo off
set T_FILENAME="TR_Snow Bros. - Nick & Tom (Japan).md"
set S_FILENAME="Snow Bros. - Nick & Tom (Japan).md"
set SCRIPTNAME="snowbrosnicktomsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
