@echo off
set T_FILENAME="TR_Justice League Task Force (W) [!].bin"
set S_FILENAME="Justice League Task Force (W) [!].bin"
set SCRIPTNAME="justiceleaguetaskforcesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
