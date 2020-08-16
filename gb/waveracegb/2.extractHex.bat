@echo off
set T_FILENAME="TR_Wave Race (USA, Europe).gb"
set SCRIPTNAME="waveracegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
