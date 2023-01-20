@echo off
set T_FILENAME="Pinochio 32X Working.32x"
set SCRIPTNAME="pinochio32xworking32x"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
