@echo off
set T_FILENAME="Adan y Eva (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="adanyevanes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
