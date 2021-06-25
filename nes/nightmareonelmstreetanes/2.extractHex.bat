@echo off
set T_FILENAME="TR_Nightmare on Elm Street, A (USA).nes"
set SCRIPTNAME="nightmareonelmstreetanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 183CF:10,1842F:10,184F8:10,19A82:70,19B29:20,19D10:20,19D2F:20,19D4E:20
pause
