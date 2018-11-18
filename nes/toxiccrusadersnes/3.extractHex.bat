@echo off
set T_FILENAME="TR_Toxic Crusaders (U) [!].nes"
set SCRIPTNAME="toxiccrusadersnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 22340-223C0,229B0-22A00,23050-23080,24A10-24A30,
pause
