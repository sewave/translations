@echo off
set T_FILENAME="TR_3D Deathchase.tzx"
set S_FILENAME="3D Deathchase.tzx"
set SCRIPTNAME="3ddeathchasetzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
