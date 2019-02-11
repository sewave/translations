@echo off
set T_FILENAME="TR_Bomberman (U) [!].nes"
set S_FILENAME="Bomberman (U) [!].nes"
set SCRIPTNAME="bombermannes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
