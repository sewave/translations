@echo off
set T_FILENAME="Netherworld.tzx"
set SCRIPTNAME="netherworldtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
