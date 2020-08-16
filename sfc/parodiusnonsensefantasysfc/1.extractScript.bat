@echo off
set T_FILENAME="Parodius - Non-Sense Fantasy (E).smc"
set SCRIPTNAME="parodiusnonsensefantasysfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
