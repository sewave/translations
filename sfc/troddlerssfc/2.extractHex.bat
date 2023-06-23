@echo off
set T_FILENAME="TR_Troddlers (USA).sfc"
set SCRIPTNAME="troddlerssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 48406:60,486A6:160,49206:60,496A6:160
pause
