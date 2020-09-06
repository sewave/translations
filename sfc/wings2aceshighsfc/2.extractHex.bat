@echo off
set T_FILENAME="TR_Wings 2 - Aces High (USA).sfc"
set SCRIPTNAME="wings2aceshighsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
