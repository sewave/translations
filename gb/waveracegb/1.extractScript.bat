@echo off
set T_FILENAME="Wave Race (USA, Europe).gb"
set SCRIPTNAME="waveracegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
