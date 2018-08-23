@echo off
set T_FILENAME="TR_Double Dragon 3 (U) [!].gb"
set S_FILENAME="Double Dragon 3 (U) [!].gb"
set SCRIPTNAME="doubledragon3gb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
