@echo off
set T_FILENAME="TR_Contra (U) [!].nes"
set S_FILENAME="Contra (U) [!].nes"
set SCRIPTNAME="contranes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
