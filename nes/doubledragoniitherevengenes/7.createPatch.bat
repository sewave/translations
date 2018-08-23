@echo off
set T_FILENAME="TR_Double Dragon II - The Revenge (U) (PRG1) [!].nes"
set S_FILENAME="Double Dragon II - The Revenge (U) (PRG1) [!].nes"
set SCRIPTNAME="doubledragoniitherevengenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
