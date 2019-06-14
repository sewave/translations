@echo off
set T_FILENAME="TR_Mike Tyson's Punch-Out!! (U) (PRG1) [!].nes"
set SCRIPTNAME="miketysonspunchoutnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
