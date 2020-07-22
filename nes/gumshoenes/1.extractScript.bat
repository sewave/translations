@echo off
set T_FILENAME="Gumshoe (USA, Europe).nes"
set SCRIPTNAME="gumshoenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
