@echo off
set T_FILENAME="TR_Spartan X (J) [!].nes"
set S_FILENAME="Spartan X (J) [!].nes"
set SCRIPTNAME="spartanxnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
