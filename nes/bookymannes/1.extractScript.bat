@echo off
set T_FILENAME="Booky Man (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="bookymannes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
