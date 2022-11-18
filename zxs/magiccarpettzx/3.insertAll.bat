@echo off
set T_FILENAME="TR_Magic Carpet.tzx"
set S_FILENAME="Magic Carpet.tzx"
set SCRIPTNAME="magiccarpettzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
