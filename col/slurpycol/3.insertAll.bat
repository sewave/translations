@echo off
set T_FILENAME="TR_Slurpy (1984) (Xonox).col"
set S_FILENAME="Slurpy (1984) (Xonox).col"
set SCRIPTNAME="slurpycol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
