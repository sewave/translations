@echo off
set T_FILENAME="TR_Shadow of the Beast 2 (UE) [!].gen"
set S_FILENAME="Shadow of the Beast 2 (UE) [!].gen"
set SCRIPTNAME="shadowofthebeast2smd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
