@echo off
set T_FILENAME="TR_Hobgoblin.tzx"
set S_FILENAME="Hobgoblin.tzx"
set SCRIPTNAME="hobgoblintzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
