@echo off
set T_FILENAME="TR_Megalopolis SOS (1983)(General).rom"
set SCRIPTNAME="megalopolissosrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
