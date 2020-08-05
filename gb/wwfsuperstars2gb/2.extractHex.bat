@echo off
set T_FILENAME="TR_WWF Superstars 2 (USA, Europe).gb"
set SCRIPTNAME="wwfsuperstars2gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
