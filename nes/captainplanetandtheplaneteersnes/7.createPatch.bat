@echo off
set T_FILENAME="TR_Captain Planet and The Planeteers (U) [!].nes"
set S_FILENAME="Captain Planet and The Planeteers (U) [!].nes"
set SCRIPTNAME="captainplanetandtheplaneteersnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
