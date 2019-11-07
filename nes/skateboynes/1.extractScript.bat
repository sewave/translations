@echo off
set T_FILENAME="Skate Boy (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="skateboynes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
