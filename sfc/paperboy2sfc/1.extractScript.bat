@echo off
set T_FILENAME="Paperboy 2 (USA).sfc"
set SCRIPTNAME="paperboy2sfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
