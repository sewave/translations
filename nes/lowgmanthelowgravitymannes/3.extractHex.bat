@echo off
set T_FILENAME="TR_Low G Man - The Low Gravity Man (U) [!].nes"
set SCRIPTNAME="lowgmanthelowgravitymannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 203D0-204D0,22C10-22E10
pause
