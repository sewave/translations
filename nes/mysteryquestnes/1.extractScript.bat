@echo off
set T_FILENAME="Mystery Quest (USA).nes"
set SCRIPTNAME="mysteryquestnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
