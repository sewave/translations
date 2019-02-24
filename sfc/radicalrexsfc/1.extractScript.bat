@echo off
set T_FILENAME="Radical Rex (U).smc"
set SCRIPTNAME="radicalrexsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
