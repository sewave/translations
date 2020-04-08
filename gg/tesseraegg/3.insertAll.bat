@echo off
set T_FILENAME="TR_Tesserae (U) [!].gg"
set S_FILENAME="Tesserae (U) [!].gg"
set SCRIPTNAME="tesseraegg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
