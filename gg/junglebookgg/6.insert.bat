@echo off
set T_FILENAME="TR_Jungle Book, The (U) (Mar 1994) [!].gg"
set S_FILENAME="Jungle Book, The (U) (Mar 1994) [!].gg"
set SCRIPTNAME="junglebookgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
