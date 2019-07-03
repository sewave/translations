@echo off
set T_FILENAME="Top Gear (U) [!].smc"
set SCRIPTNAME="topgearsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
