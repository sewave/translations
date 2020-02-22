@echo off
set T_FILENAME="TR_Magic Dragon (Unl).nes"
set S_FILENAME="Magic Dragon (Unl).nes"
set SCRIPTNAME="magicdragonnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
