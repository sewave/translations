@echo off
set T_FILENAME="TR_Megaman II (U) [!].nes"
set S_FILENAME="Megaman II (U) [!].nes"
set SCRIPTNAME="megaman2"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
