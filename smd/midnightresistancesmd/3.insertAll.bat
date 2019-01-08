@echo off
set T_FILENAME="TR_Midnight Resistance (U) [!].gen"
set S_FILENAME="Midnight Resistance (U) [!].gen"
set SCRIPTNAME="midnightresistancesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
