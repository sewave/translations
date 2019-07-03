@echo off
set T_FILENAME="TR_Athena (U) [!].nes"
set S_FILENAME="Athena (U) [!].nes"
set SCRIPTNAME="athenanes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
