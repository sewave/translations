@echo off
set T_FILENAME="TR_Alpha Mission (U) [!].nes"
set S_FILENAME="Alpha Mission (U) [!].nes"
set SCRIPTNAME="alphamissionnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
