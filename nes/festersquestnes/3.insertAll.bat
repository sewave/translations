@echo off
set T_FILENAME="TR_Fester's Quest (U) [!].nes"
set S_FILENAME="Fester's Quest (U) [!].nes"
set SCRIPTNAME="festersquestnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
