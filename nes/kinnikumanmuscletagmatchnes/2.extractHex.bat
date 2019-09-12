@echo off
set T_FILENAME="TR_Kinnikuman - Muscle Tag Match (Japan) (Rev 1).nes"
set SCRIPTNAME="kinnikumanmuscletagmatchnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5280:80
pause
