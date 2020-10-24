@echo off
set T_FILENAME="Stargate (USA, Europe).md"
set SCRIPTNAME="stargatesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
