@echo off
set T_FILENAME="TR_Rush'n Attack (USA).nes"
set S_FILENAME="Rush'n Attack (USA).nes"
set SCRIPTNAME="rushnattacknes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
