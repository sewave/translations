@echo off
set T_FILENAME="TR_Zanac-EX (1986) (Pony Cannon) (J).rom"
set SCRIPTNAME="zanacexrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
