@echo off
set T_FILENAME="Kinnikuman - Muscle Tag Match (Japan) (Rev 1).nes"
set SCRIPTNAME="kinnikumanmuscletagmatchnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
