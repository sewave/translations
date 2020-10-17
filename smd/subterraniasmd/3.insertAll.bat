@echo off
set T_FILENAME="TR_Sub-Terrania (USA).md"
set S_FILENAME="Sub-Terrania (USA).md"
set SCRIPTNAME="subterraniasmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
