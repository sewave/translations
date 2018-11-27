@echo off
set T_FILENAME="TR_Makaimura (J) [A].nes"
set S_FILENAME="Makaimura (J) [!].nes"
set SCRIPTNAME="makaimuranes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
