@echo off
set T_FILENAME="TR_Sonic The Hedgehog 2 (U) [!].gg"
set S_FILENAME="Sonic The Hedgehog 2 (U) [!].gg"
set SCRIPTNAME="sonicthehedgehog2gg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
