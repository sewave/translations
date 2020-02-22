@echo off
set T_FILENAME="TR_Metal Gear (USA).nes"
set S_FILENAME="Metal Gear (USA).nes"
set SCRIPTNAME="metalgearnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
