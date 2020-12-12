@echo off
set T_FILENAME="Earthworm Jim 2 (USA).md"
set SCRIPTNAME="earthwormjim2smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
