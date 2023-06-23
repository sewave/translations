@echo off
set T_FILENAME="Tai-Chi Tortoise.tzx"
set SCRIPTNAME="taichitortoisetzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
