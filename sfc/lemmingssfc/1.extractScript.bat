@echo off
set T_FILENAME="Lemmings (USA) (Rev 1).sfc"
set SCRIPTNAME="lemmingssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
