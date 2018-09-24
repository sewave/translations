@echo off
set T_FILENAME="Earthworm Jim (U) [!].gg"
set SCRIPTNAME="earthwormjimgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
