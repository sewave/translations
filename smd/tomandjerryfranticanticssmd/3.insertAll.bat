@echo off
set T_FILENAME="TR_Tom and Jerry - Frantic Antics! (USA).md"
set S_FILENAME="Tom and Jerry - Frantic Antics! (USA).md"
set SCRIPTNAME="tomandjerryfranticanticssmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
