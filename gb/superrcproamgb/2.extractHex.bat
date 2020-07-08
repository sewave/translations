@echo off
set T_FILENAME="TR_Super R.C. Pro-Am (USA, Europe).gb"
set SCRIPTNAME="superrcproamgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 43D1:30,4721:90
pause
