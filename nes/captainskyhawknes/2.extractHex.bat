@echo off
set T_FILENAME="TR_Captain Skyhawk (U) (PRG1) [!].nes"
set SCRIPTNAME="captainskyhawknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
