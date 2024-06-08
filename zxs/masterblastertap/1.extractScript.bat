@echo off
set T_FILENAME="MBLASTER.TAP"
set SCRIPTNAME="masterblastertap"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
