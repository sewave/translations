@echo off
set T_FILENAME="TR_High Speed (USA).nes"
set S_FILENAME="High Speed (USA).nes"
set SCRIPTNAME="highspeednes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
