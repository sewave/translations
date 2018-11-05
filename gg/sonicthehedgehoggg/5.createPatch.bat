@echo off
set T_FILENAME="TR_Sonic The Hedgehog (U) (V1.1) [!].gg"
set S_FILENAME="Sonic The Hedgehog (U) (V1.1) [!].gg"
set SCRIPTNAME="sonicthehedgehoggg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
