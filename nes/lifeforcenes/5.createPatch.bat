@echo off
set T_FILENAME="TR_Life Force (U) [!].nes"
set S_FILENAME="Life Force (U) [!].nes"
set SCRIPTNAME="lifeforcenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
