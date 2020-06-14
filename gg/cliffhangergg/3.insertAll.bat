@echo off
set T_FILENAME="TR_Cliffhanger (U) [!].gg"
set S_FILENAME="Cliffhanger (U) [!].gg"
set SCRIPTNAME="cliffhangergg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
