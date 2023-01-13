@echo off
set T_FILENAME="TR_Omega Race (1981-83) (Midway).col"
set S_FILENAME="Omega Race (1981-83) (Midway).col"
set SCRIPTNAME="omegaracecol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
