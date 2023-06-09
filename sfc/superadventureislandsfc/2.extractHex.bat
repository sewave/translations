@echo off
set T_FILENAME="TR_Super Adventure Island (USA).sfc"
set SCRIPTNAME="superadventureislandsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
