@echo off
set T_FILENAME="TR_Pop Breaker (Japan).gg"
set SCRIPTNAME="popbreakergg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
