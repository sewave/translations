@echo off
set T_FILENAME="TR_Operation Secret Storm (Color Dreams) [!].nes"
set S_FILENAME="Operation Secret Storm (Color Dreams) [!].nes"
set SCRIPTNAME="operationsecretstormnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
