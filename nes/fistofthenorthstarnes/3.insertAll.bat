@echo off
set T_FILENAME="TR_Fist of the North Star (USA).nes"
set S_FILENAME="Fist of the North Star (USA).nes"
set SCRIPTNAME="fistofthenorthstarnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
