@echo off
set T_FILENAME="TR_Arkista's Ring (U) [!].nes"
set S_FILENAME="Arkista's Ring (U) [!].nes"
set SCRIPTNAME="arkistasringnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
