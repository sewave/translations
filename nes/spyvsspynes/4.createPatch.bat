@echo off
set T_FILENAME="TR_Spy Vs Spy (U) [!].nes"
set S_FILENAME="Spy Vs Spy (U) [!].nes"
set SCRIPTNAME="spyvsspynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
