@echo off
set T_FILENAME="TR_Castelian (U) [!].nes"
set S_FILENAME="Castelian (U) [!].nes"
set SCRIPTNAME="casteliannes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
