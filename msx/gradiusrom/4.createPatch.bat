@echo off
set T_FILENAME="TR_Gradius (1986) (Konami) (J).rom"
set S_FILENAME="Gradius (1986) (Konami) (J).rom"
set SCRIPTNAME="gradiusrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
