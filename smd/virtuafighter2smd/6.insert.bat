@echo off
set T_FILENAME="TR_Virtua Fighter 2 (UE) [!].gen"
set S_FILENAME="Virtua Fighter 2 (UE) [!].gen"
set SCRIPTNAME="virtuafighter2smd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
