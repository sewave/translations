@echo off
set T_FILENAME="The Happiest Days Of Your Life.tzx"
set SCRIPTNAME="thehappiestdaysofyourlifetzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
