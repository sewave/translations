@echo off
set T_FILENAME="TR_Zenji (1984) (Activision).col"
set S_FILENAME="Zenji (1984) (Activision).col"
set SCRIPTNAME="zenjicol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
