@echo off
set T_FILENAME="TR_Pac-Man (USA, Europe).gg"
set SCRIPTNAME="pacmangg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 793E:A0
pause
