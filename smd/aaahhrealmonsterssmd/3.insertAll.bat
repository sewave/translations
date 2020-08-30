@echo off
set T_FILENAME="TR_Aaahh!!! Real Monsters (USA).md"
set S_FILENAME="Aaahh!!! Real Monsters (USA).md"
set SCRIPTNAME="aaahhrealmonsterssmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
