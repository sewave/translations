@echo off
set T_FILENAME="Magic Carpet.tzx"
set SCRIPTNAME="magiccarpettzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
