@echo off
set T_FILENAME="TR_Race Drivin' (USA, Europe).gb"
set SCRIPTNAME="racedrivingb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
