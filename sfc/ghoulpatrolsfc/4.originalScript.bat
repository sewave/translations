@echo off
set T_FILENAME="Ghoul Patrol (U).smc"
set SCRIPTNAME="ghoulpatrolsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
