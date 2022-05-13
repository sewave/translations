@echo off
set T_FILENAME="TR_Superkid In Space.tzx"
set S_FILENAME="Superkid In Space.tzx"
set SCRIPTNAME="superkidinspacetzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
