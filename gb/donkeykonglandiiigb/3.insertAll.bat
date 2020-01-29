@echo off
set T_FILENAME="TR_Donkey Kong Land III (U) (V1.1) [S][!].gb"
set S_FILENAME="Donkey Kong Land III (U) (V1.1) [S][!].gb"
set SCRIPTNAME="donkeykonglandiiigb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
