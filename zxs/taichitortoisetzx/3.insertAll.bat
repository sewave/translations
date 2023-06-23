@echo off
set T_FILENAME="TR_Tai-Chi Tortoise.tzx"
set S_FILENAME="Tai-Chi Tortoise.tzx"
set SCRIPTNAME="taichitortoisetzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
