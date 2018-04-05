@echo off
set T_FILENAME="TR_Ninja Crusaders (U) [!].nes"
set SCRIPTNAME="ninjacrusaders"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
