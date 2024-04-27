@echo off
set T_FILENAME="The Ice Temple.tzx"
set SCRIPTNAME="theicetempletzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
