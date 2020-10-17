@echo off
set T_FILENAME="TR_Super Mario Bros. 2 (J) [hM04].nes"
set S_FILENAME="Super Mario Bros. 2 (J) [hM04].nes"
set SCRIPTNAME="supermariobros2nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
