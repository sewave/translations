@echo off
set T_FILENAME="TR_Phantom 2040 (U) [!].gg"
set S_FILENAME="Phantom 2040 (U) [!].gg"
set SCRIPTNAME="phantom2040gg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
