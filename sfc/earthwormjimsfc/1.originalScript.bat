@echo off
set T_FILENAME="Earthworm Jim (U) [!].smc"
set SCRIPTNAME="earthwormjimsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
