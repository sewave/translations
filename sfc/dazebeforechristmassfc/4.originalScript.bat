@echo off
set T_FILENAME="Daze Before Christmas (E).smc"
set SCRIPTNAME="dazebeforechristmassfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
