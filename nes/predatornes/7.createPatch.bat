@echo off
set T_FILENAME="TR_Predator (U) [!].nes"
set S_FILENAME="Predator (U) [!].nes"
set SCRIPTNAME="predatornes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
