@echo off
set T_FILENAME="TR_Paperboy 2 (U) [!].gg"
set S_FILENAME="Paperboy 2 (U) [!].gg"
set SCRIPTNAME="paperboy2gg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
