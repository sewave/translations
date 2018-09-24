@echo off
set T_FILENAME="Earthworm Jim (U) [!].gb"
set SCRIPTNAME="earthwormjimgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
