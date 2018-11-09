@echo off
set T_FILENAME="TR_Chuck Rock (U) [!].gg"
set S_FILENAME="Chuck Rock (U) [!].gg"
set SCRIPTNAME="chuckrockgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
