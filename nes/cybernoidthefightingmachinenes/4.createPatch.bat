@echo off
set T_FILENAME="TR_Cybernoid - The Fighting Machine (U) [!].nes"
set S_FILENAME="Cybernoid - The Fighting Machine (U) [!].nes"
set SCRIPTNAME="cybernoidthefightingmachinenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
