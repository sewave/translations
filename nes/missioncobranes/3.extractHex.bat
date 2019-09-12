@echo off
set T_FILENAME="TR_Mission Cobra (Bunch) [!].nes"
set SCRIPTNAME="missioncobranes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A130:60
pause
