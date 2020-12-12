@echo off
set T_FILENAME="Earthworm Jim 2 (USA).sfc"
set SCRIPTNAME="earthwormjim2sfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
