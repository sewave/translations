@echo off
set T_FILENAME="TR_Super Shadow of the Beast (U).smc"
set SCRIPTNAME="supershadowofthebeastsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
