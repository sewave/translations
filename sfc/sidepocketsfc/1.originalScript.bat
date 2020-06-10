@echo off
set T_FILENAME="Side Pocket (U).smc"
set SCRIPTNAME="sidepocketsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
