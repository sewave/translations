@echo off
set T_FILENAME="TR_Spider-Man 2 - The Sinister Six (USA, Europe).gbc"
set SCRIPTNAME="spiderman2thesinistersixgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
