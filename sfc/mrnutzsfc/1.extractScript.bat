@echo off
set T_FILENAME="Mr. Nutz (U).smc"
set SCRIPTNAME="mrnutzsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
