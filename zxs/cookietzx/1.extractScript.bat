@echo off
set T_FILENAME="Cookie (1983)(Ultimate).tzx"
set SCRIPTNAME="cookietzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
