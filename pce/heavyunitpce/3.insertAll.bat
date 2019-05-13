@echo off
set T_FILENAME="TR_Heavy Unit (J).pce"
set S_FILENAME="Heavy Unit (Japan).pce"
set SCRIPTNAME="heavyunitpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
