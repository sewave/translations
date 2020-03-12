@echo off
set T_FILENAME="TR_Airwolf (U) [!].nes"
set SCRIPTNAME="airwolfnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
