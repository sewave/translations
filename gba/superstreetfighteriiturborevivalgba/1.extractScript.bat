@echo off
set T_FILENAME="Super Street Fighter II Turbo - Revival (USA).gba"
set SCRIPTNAME="superstreetfighteriiturborevivalgba"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
