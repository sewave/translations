@echo off
set T_FILENAME="TR_Bio Force Ape (Japan) (En) (Proto).nes"
set S_FILENAME="Bio Force Ape (Japan) (En) (Proto).nes"
set SCRIPTNAME="bioforceapenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
