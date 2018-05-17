@echo off
set T_FILENAME="TR_Zero the Kamikaze Squirrel (U) [!].smc"
set SCRIPTNAME="zerothekamikazesquirrelsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
