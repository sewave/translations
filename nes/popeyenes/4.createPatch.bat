@echo off
set T_FILENAME="TR_Popeye (W) (PRG1) [!].nes"
set S_FILENAME="Popeye (W) (PRG1) [!].nes"
set SCRIPTNAME="popeyenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
