@echo off
set T_FILENAME="TR_Alien 3 (USA).sfc"
set S_FILENAME="Alien 3 (USA).sfc"
set SCRIPTNAME="alien3sfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
