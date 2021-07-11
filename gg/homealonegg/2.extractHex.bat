@echo off
set T_FILENAME="TR_Home Alone (USA, Europe).gg"
set SCRIPTNAME="homealonegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
