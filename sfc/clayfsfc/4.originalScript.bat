@echo off
set T_FILENAME="Clay Fighter - Tournament Edition (U).smc"
set SCRIPTNAME="clayfsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
