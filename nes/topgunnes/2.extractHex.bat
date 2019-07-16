@echo off
set T_FILENAME="TR_Top Gun (U) (PRG1) [!].nes"
set SCRIPTNAME="topgunnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
