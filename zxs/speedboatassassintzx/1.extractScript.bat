@echo off
set T_FILENAME="Speedboat Assassin.tzx"
set SCRIPTNAME="speedboatassassintzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
