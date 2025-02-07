@echo off
set T_FILENAME="TR_Tutankham (USA).col"
set S_FILENAME="Tutankham (USA).col"
set SCRIPTNAME="tutankhamcol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
rem java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
