@echo off
set T_FILENAME="TR_Marble Madness (U) [!].nes"
set S_FILENAME="Marble Madness (U) [!].nes"
set SCRIPTNAME="marblemadnessnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
