@echo off
set T_FILENAME="TR_Captain Planet and the Planeteers (E) [!].gen"
set SCRIPTNAME="captainplanetandtheplaneteerssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
