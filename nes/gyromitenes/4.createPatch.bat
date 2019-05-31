@echo off
set T_FILENAME="TR_Gyromite (W) [!].nes"
set S_FILENAME="Gyromite (W) [!].nes"
set SCRIPTNAME="gyromitenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
