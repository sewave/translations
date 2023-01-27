@echo off
set T_FILENAME="TR_Venture (1982) (Exidy).col"
set S_FILENAME="Venture (1982) (Exidy).col"
set SCRIPTNAME="venturecol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
