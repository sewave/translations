@echo off
set T_FILENAME="Creatom (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="creatomnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
