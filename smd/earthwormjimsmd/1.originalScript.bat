@echo off
set T_FILENAME="Earthworm Jim (U) [!].gen"
set SCRIPTNAME="earthwormjimsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
