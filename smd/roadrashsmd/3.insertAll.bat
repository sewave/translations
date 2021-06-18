@echo off
set T_FILENAME="TR_Road Rash (USA, Europe).md"
set S_FILENAME="Road Rash (USA, Europe).md"
set SCRIPTNAME="roadrashsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
