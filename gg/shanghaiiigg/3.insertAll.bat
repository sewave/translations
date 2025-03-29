@echo off
set T_FILENAME="TR_Shanghai II (Japan) (Rev A).gg"
set S_FILENAME="Shanghai II (Japan) (Rev A).gg"
set SCRIPTNAME="shanghaiiigg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
