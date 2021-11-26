@echo off
set T_FILENAME="Bonnie_and_Clyde.tap"
set SCRIPTNAME="bonnieandclydetap"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
