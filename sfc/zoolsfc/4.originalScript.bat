@echo off
set T_FILENAME="Zool (U).smc"
set SCRIPTNAME="zoolsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
