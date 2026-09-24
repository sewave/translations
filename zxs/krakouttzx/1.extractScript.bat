@echo off
set T_FILENAME="Krakout.tzx"
set SCRIPTNAME="krakouttzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
