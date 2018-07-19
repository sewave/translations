@echo off
set T_FILENAME="TR_Gradius II (J) [!].nes"
set S_FILENAME="Gradius II (J) [!].nes"
set SCRIPTNAME="gradiusiines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
