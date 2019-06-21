@echo off
set T_FILENAME="TR_Woody Pop (U) (V1.1) [!].gg"
set S_FILENAME="Woody Pop (U) (V1.1) [!].gg"
set SCRIPTNAME="woodypopgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
