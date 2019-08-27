@echo off
set T_FILENAME="TR_James Pond 3 - Operation Starfish (UE) [!].gen"
set S_FILENAME="James Pond 3 - Operation Starfish (UE) [!].gen"
set SCRIPTNAME="jamespond3operationstarfishsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
