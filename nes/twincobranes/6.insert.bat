@echo off
set T_FILENAME="TR_Twin Cobra (U) [!].nes"
set S_FILENAME="Twin Cobra (U) [!].nes"
set SCRIPTNAME="twincobranes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
