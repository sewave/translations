@echo off
set T_FILENAME="TR_Aquatic Games - Starring James Pond, The (UE) [!].gen"
set S_FILENAME="Aquatic Games - Starring James Pond, The (UE) [!].gen"
set SCRIPTNAME="aquaticgamesstarringjamespondthesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
