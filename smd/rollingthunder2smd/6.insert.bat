@echo off
set T_FILENAME="TR_Rolling Thunder 2 (U) [c][!].bin"
set S_FILENAME="Rolling Thunder 2 (U) [c][!].bin"
set SCRIPTNAME="rollingthunder2smd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
