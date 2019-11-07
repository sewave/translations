@echo off
set T_FILENAME="Tanque (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="tanquenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
