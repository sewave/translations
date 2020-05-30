@echo off
set T_FILENAME="TR_X-Men - Mojo World (U) [!].gg"
set S_FILENAME="X-Men - Mojo World (U) [!].gg"
set SCRIPTNAME="xmenmojoworldgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
