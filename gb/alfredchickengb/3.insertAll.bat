@echo off
set T_FILENAME="TR_Alfred Chicken (USA).gb"
set S_FILENAME="Alfred Chicken (USA).gb"
set SCRIPTNAME="alfredchickengb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
