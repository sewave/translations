@echo off
set T_FILENAME="TR_Centipede (USA).col"
set S_FILENAME="Centipede (USA).col"
set SCRIPTNAME="centipedecol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
