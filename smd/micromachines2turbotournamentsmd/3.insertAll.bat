@echo off
set T_FILENAME="TR_Micro Machines 2 - Turbo Tournament (Europe) (J-Cart).md"
set S_FILENAME="Micro Machines 2 - Turbo Tournament (Europe) (J-Cart).md"
set SCRIPTNAME="micromachines2turbotournamentsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
