@echo off
set T_FILENAME="Mask III.tzx"
set SCRIPTNAME="maskiiitzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
