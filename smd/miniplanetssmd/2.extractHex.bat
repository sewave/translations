@echo off
set T_FILENAME="TR_Miniplanets.bin"
set SCRIPTNAME="miniplanetssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
