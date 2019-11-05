@echo off
set T_FILENAME="F15 City War (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="f15citywarnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
