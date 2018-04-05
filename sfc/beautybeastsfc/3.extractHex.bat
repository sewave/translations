@echo off
set T_FILENAME="TR_Beauty and the Beast (U).smc"
set SCRIPTNAME="beautybeastsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
