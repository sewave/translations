@echo off
set T_FILENAME="TR_Gun-Nac (U) [!].nes"
set S_FILENAME="Gun-Nac (U) [!].nes"
set SCRIPTNAME="gunnacnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
