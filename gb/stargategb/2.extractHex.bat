@echo off
set T_FILENAME="TR_Stargate (USA, Europe).gb"
set SCRIPTNAME="stargategb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
