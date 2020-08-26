@echo off
set T_FILENAME="TR_Toxic Crusaders (U).gb"
set SCRIPTNAME="toxiccrusadersgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
