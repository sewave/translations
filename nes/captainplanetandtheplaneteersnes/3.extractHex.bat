@echo off
set T_FILENAME="TR_Captain Planet and The Planeteers (U) [!].nes"
set SCRIPTNAME="captainplanetandtheplaneteersnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
