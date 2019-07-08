@echo off
set T_FILENAME="TR_Arcade Classics (U) [!].gg"
set S_FILENAME="Arcade Classics (U) [!].gg"
set SCRIPTNAME="arcadeclassicsgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
