@echo off
set T_FILENAME="TR_Mystery Quest (USA).nes"
set S_FILENAME="Mystery Quest (USA).nes"
set SCRIPTNAME="mysteryquestnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
