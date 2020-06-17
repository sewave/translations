@echo off
set T_FILENAME="TR_Super Return of the Jedi (U) [!].gg"
set S_FILENAME="Super Return of the Jedi (U) [!].gg"
set SCRIPTNAME="superreturnofthejedigg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
