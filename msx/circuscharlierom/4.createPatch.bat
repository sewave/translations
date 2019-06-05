@echo off
set T_FILENAME="TR_Circus Charlie (1984) (Konami) (J).rom"
set S_FILENAME="Circus Charlie (1984) (Konami) (J).rom"
set SCRIPTNAME="circuscharlierom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
