@echo off
set T_FILENAME="TR_Double Dragon II - The Revenge (U) (PRG1) [!].nes"
set SCRIPTNAME="doubledragoniitherevengenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
