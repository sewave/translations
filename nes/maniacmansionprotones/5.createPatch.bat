@echo off
set T_FILENAME="TR_Maniac Mansion (U) (Prototype) [!].nes"
set S_FILENAME="Maniac Mansion (U) (Prototype) [!].nes"
set SCRIPTNAME="maniacmansionprotones"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
