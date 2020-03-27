@echo off
set T_FILENAME="TR_City Connection (1986) (Jaleco) (J).rom"
set SCRIPTNAME="cityconnectionrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
