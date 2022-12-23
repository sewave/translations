@echo off
set T_FILENAME="TR_Sidewinder II (Mastertronic Plus).tzx"
set S_FILENAME="Sidewinder II (Mastertronic Plus).tzx"
set SCRIPTNAME="sidewinderiitzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
