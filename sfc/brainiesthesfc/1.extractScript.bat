@echo off
set T_FILENAME="Brainies, The (USA).sfc"
set SCRIPTNAME="brainiesthesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
