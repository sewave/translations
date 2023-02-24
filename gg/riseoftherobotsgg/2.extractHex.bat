@echo off
set T_FILENAME="TR_Rise of the Robots (USA, Europe).gg"
set SCRIPTNAME="riseoftherobotsgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
