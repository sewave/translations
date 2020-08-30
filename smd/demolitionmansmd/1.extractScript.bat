@echo off
set T_FILENAME="Demolition Man (USA, Europe).md"
set SCRIPTNAME="demolitionmansmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
