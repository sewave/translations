@echo off
set T_FILENAME="Skiing (1986) (Telegames).col"
set SCRIPTNAME="skiingcol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
