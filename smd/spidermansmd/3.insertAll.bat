@echo off
set T_FILENAME="TR_Spider-Man (USA, Europe) (Acclaim).md"
set S_FILENAME="Spider-Man (USA, Europe) (Acclaim).md"
set SCRIPTNAME="spidermansmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
