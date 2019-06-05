@echo off
set T_FILENAME="TR_Choplifter (1985) (Sony) (J).rom"
set SCRIPTNAME="choplifterrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
