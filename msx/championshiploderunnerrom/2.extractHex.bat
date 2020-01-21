@echo off
set T_FILENAME="TR_Championship Lode Runner (1985) (Sony) (J).rom"
set SCRIPTNAME="championshiploderunnerrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
