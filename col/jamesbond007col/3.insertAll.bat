@echo off
set T_FILENAME="TR_James Bond 007 (USA).col"
set S_FILENAME="James Bond 007 (USA).col"
set SCRIPTNAME="jamesbond007col"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
