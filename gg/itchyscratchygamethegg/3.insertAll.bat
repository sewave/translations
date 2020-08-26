@echo off
set T_FILENAME="TR_Itchy & Scratchy Game, The (U) [!].gg"
set S_FILENAME="Itchy & Scratchy Game, The (U) [!].gg"
set SCRIPTNAME="itchyscratchygamethegg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
