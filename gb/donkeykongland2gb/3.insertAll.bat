@echo off
set T_FILENAME="TR_Donkey Kong Land 2 (UE) [S][!].gb"
set S_FILENAME="Donkey Kong Land 2 (UE) [S][!].gb"
set SCRIPTNAME="donkeykongland2gb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
