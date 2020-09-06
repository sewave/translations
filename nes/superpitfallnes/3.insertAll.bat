@echo off
set T_FILENAME="TR_Super Pitfall (USA).nes"
set S_FILENAME="Super Pitfall (USA).nes"
set SCRIPTNAME="superpitfallnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
