@echo off
set T_FILENAME="TR_Rambo (U) (PRG1) [!].nes"
set S_FILENAME="Rambo (U) (PRG1) [!].nes"
set SCRIPTNAME="rambones"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
