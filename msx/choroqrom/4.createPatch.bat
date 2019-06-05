@echo off
set T_FILENAME="TR_Choroq (1984) (Taito) (J).rom"
set S_FILENAME="Choroq (1984) (Taito) (J).rom"
set SCRIPTNAME="choroqrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
