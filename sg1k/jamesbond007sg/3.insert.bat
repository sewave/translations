@echo off
set T_FILENAME="TR_James Bond 007 (SG-1000) [!].sg"
set S_FILENAME="James Bond 007 (SG-1000) [!].sg"
set SCRIPTNAME="jamesbond007sg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
