@echo off
set T_FILENAME="TR_Double Dragon 3 - The Rosetta Stone (UE) [!].gen"
set S_FILENAME="Double Dragon 3 - The Rosetta Stone (UE) [!].gen"
set SCRIPTNAME="doubledragon3therosettastonesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
