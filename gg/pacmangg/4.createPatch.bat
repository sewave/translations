@echo off
set T_FILENAME="TR_Pac-Man (USA, Europe).gg"
set S_FILENAME="Pac-Man (USA, Europe).gg"
set SCRIPTNAME="pacmangg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
