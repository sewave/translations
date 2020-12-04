@echo off
set T_FILENAME="TR_Time Trax (USA) (Proto).md"
set S_FILENAME="Time Trax (USA) (Proto).md"
set SCRIPTNAME="timetraxsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
