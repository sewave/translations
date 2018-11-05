@echo off
set T_FILENAME="TR_Parodius (E) [!].nes"
set S_FILENAME="Parodius (E) [!].nes"
set SCRIPTNAME="parodiusnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
