@echo off
set T_FILENAME="TR_Zanac (1986) (Pony Cannon) (J).rom"
set SCRIPTNAME="zanacrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
