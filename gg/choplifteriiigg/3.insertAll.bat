@echo off
set T_FILENAME="TR_Choplifter III (U) [!].gg"
set S_FILENAME="Choplifter III (U) [!].gg"
set SCRIPTNAME="choplifteriiigg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
