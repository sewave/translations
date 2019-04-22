@echo off
set T_FILENAME="TR_Battle Tank (U) [!].nes"
set SCRIPTNAME="battletanknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
