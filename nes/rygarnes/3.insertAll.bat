@echo off
set T_FILENAME="TR_Rygar (USA) (Rev A).nes"
set S_FILENAME="Rygar (USA) (Rev A).nes"
set SCRIPTNAME="rygarnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
