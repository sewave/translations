@echo off
set T_FILENAME="Miniplanets.bin"
set SCRIPTNAME="miniplanetssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
