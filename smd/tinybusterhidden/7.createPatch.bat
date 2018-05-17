@echo off
set T_FILENAME="TR_Tiny Toon Adventures - Buster's Hidden Treasure (U) [!].bin"
set S_FILENAME="Tiny Toon Adventures - Buster's Hidden Treasure (U) [!].bin"
set SCRIPTNAME="tinybusterhidden"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
