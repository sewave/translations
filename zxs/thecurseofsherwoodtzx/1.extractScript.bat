@echo off
set T_FILENAME="The Curse Of Sherwood.tzx"
set SCRIPTNAME="thecurseofsherwoodtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
