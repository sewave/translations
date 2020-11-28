@echo off
set T_FILENAME="TR_Formation Z (Japan) (Rev A).nes"
set S_FILENAME="Formation Z (Japan) (Rev A).nes"
set SCRIPTNAME="formationznes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
