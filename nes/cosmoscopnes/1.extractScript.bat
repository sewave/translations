@echo off
set T_FILENAME="Cosmos Cop (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="cosmoscopnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
