@echo off
set T_FILENAME="TR_Makaimura (J) [A].nes"
set S_FILENAME="Makaimura (J) [A].nes"
set SCRIPTNAME="makaimuranes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
