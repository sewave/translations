@echo off
set T_FILENAME="TR_Super Runner (1987) (Pony Cannon) (J).rom"
set SCRIPTNAME="superrunnerrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
