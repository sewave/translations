@echo off
set T_FILENAME="TR_Godzilla (USA, Europe).gb"
set SCRIPTNAME="godzillagb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E670:80,1E670:80,10CA0:10,18C00:80
pause
