@echo off
set T_FILENAME="TR_Devil's Crown.tzx"
set S_FILENAME="Devil's Crown.tzx"
set SCRIPTNAME="devilscrowntzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
