@echo off
set T_FILENAME="TR_Bugs Bunny - Rabbit Rampage (USA).sfc"
set SCRIPTNAME="bugsbunnyrabbitrampagesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
