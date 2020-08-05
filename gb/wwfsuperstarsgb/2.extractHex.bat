@echo off
set T_FILENAME="TR_WWF Superstars (USA, Europe).gb"
set SCRIPTNAME="wwfsuperstarsgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
