@echo off
set T_FILENAME="Wolf Child (U) [!].smc"
set SCRIPTNAME="wolfchildsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
