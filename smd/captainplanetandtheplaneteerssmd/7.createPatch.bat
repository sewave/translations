@echo off
set T_FILENAME="TR_Captain Planet and the Planeteers (E) [!].gen"
set S_FILENAME="Captain Planet and the Planeteers (E) [!].gen"
set SCRIPTNAME="captainplanetandtheplaneteerssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
