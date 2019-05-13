@echo off
set T_FILENAME="TR_Task Force Harrier EX (U) [!].bin"
set S_FILENAME="Task Force Harrier EX (U) [!].bin"
set SCRIPTNAME="taskforceharrierexsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
