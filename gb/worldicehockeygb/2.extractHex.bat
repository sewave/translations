@echo off
set T_FILENAME="TR_World Ice Hockey (Japan).gb"
set SCRIPTNAME="worldicehockeygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex D150:10,8040:80
pause
