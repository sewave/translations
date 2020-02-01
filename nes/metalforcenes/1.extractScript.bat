@echo off
set T_FILENAME="Metal Force (Korea) (Unl).nes"
set SCRIPTNAME="metalforcenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
