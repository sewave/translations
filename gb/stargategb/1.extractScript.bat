@echo off
set T_FILENAME="Stargate (USA, Europe).gb"
set SCRIPTNAME="stargategb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
