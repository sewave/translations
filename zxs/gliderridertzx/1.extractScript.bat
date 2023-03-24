@echo off
set T_FILENAME="Glider Rider.tzx"
set SCRIPTNAME="gliderridertzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
