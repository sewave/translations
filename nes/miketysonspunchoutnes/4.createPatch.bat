@echo off
set T_FILENAME="TR_Mike Tyson's Punch-Out!! (U) (PRG1) [!].nes"
set S_FILENAME="Mike Tyson's Punch-Out!! (U) (PRG1) [!].nes"
set SCRIPTNAME="miketysonspunchoutnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
