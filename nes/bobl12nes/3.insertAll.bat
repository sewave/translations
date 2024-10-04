@echo off
set T_FILENAME="TR_bobl-1.2.nes"
set S_FILENAME="bobl-1.2.nes"
set SCRIPTNAME="bobl12nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
