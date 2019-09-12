@echo off
set T_FILENAME="TR_Kinnikuman - Muscle Tag Match (Japan) (Rev 1).nes"
set S_FILENAME="Kinnikuman - Muscle Tag Match (Japan) (Rev 1).nes"
set SCRIPTNAME="kinnikumanmuscletagmatchnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
