@echo off
set T_FILENAME="TR_Castle of Dragon (U) [!].nes"
set SCRIPTNAME="castleofdragonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
