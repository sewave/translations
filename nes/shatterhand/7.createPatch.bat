@echo off
set T_FILENAME="TR_Shatterhand (U) [!].nes"
set S_FILENAME="Shatterhand (U) [!].nes"
set SCRIPTNAME="shatterhand"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
