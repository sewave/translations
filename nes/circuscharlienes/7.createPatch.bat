@echo off
set T_FILENAME="TR_Circus Charlie (J) [!].nes"
set S_FILENAME="Circus Charlie (J) [!].nes"
set SCRIPTNAME="circuscharlienes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
