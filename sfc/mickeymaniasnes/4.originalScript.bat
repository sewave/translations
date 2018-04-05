@echo off
set T_FILENAME="Mickey Mania (U) [!].smc"
set SCRIPTNAME="mickeymaniasnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
