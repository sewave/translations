@echo off
set T_FILENAME="Zen - Intergalactic Ninja (U).gb"
set SCRIPTNAME="zenintergalacticninjagb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
