@echo off
set T_FILENAME="TR_Championship Pro-Am (USA).md"
set S_FILENAME="Championship Pro-Am (USA).md"
set SCRIPTNAME="championshipproamsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
