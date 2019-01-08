@echo off
set T_FILENAME="Marble Madness (U).gg"
set SCRIPTNAME="marblemadnessgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
