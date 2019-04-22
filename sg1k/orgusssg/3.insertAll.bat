@echo off
set T_FILENAME="TR_Orguss (SG-1000).sg"
set S_FILENAME="Orguss (SG-1000).sg"
set SCRIPTNAME="orgusssg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
