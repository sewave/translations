@echo off
set T_FILENAME="TR_Bee 52 (Camerica) [!].nes"
set S_FILENAME="Bee 52 (Camerica) [!].nes"
set SCRIPTNAME="bee52nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
