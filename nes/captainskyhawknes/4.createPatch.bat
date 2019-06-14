@echo off
set T_FILENAME="TR_Captain Skyhawk (U) (PRG1) [!].nes"
set S_FILENAME="Captain Skyhawk (U) (PRG1) [!].nes"
set SCRIPTNAME="captainskyhawknes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
