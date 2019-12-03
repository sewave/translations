@echo off
set T_FILENAME="TR_Home Alone (U) (REVA) [!].nes"
set S_FILENAME="Home Alone (U) (REVA) [!].nes"
set SCRIPTNAME="homealonenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
