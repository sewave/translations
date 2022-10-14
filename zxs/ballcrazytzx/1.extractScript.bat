@echo off
set T_FILENAME="Ball Crazy.tzx"
set SCRIPTNAME="ballcrazytzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
