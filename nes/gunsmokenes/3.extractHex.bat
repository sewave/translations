@echo off
set T_FILENAME="TR_Gun.Smoke (U) [!].nes"
set SCRIPTNAME="gunsmokenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
