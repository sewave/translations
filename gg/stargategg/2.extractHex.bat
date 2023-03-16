@echo off
set T_FILENAME="TR_Stargate (World).gg"
set SCRIPTNAME="stargategg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
