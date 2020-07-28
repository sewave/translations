@echo off
set T_FILENAME="TR_Tecmo World Cup (USA).md"
set S_FILENAME="Tecmo World Cup (USA).md"
set SCRIPTNAME="tecmoworldcupsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
