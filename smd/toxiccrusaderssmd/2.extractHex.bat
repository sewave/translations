@echo off
set T_FILENAME="TR_Toxic Crusaders (U) [!].bin"
set SCRIPTNAME="toxiccrusaderssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4B3C4:400
pause
