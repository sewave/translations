@echo off
set T_FILENAME="TR_3D Starstrike.tzx"
set S_FILENAME="3D Starstrike.tzx"
set SCRIPTNAME="3dstarstriketzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
