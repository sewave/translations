@echo off
set T_FILENAME="TR_Soul Of A Robot.tzx"
set S_FILENAME="Soul Of A Robot.tzx"
set SCRIPTNAME="soulofarobottzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
