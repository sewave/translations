@echo off
set T_FILENAME="Venture (1982) (Exidy).col"
set SCRIPTNAME="venturecol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
