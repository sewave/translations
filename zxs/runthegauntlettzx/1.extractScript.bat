@echo off
set T_FILENAME="Run The Gauntlet.tzx"
set SCRIPTNAME="runthegauntlettzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
