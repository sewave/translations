@echo off
set T_FILENAME="TR_Ninja Gaiden (U) [!].gg"
set S_FILENAME="Ninja Gaiden (U) [!].gg"
set SCRIPTNAME="ninjagaidengg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
