@echo off
set T_FILENAME="TR_Klax (USA, Europe).gg"
set SCRIPTNAME="klaxgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex D700:800
pause
