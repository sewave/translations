@echo off
set T_FILENAME="TR_Micro Machines (E).gg"
set S_FILENAME="Micro Machines (E).gg"
set SCRIPTNAME="micromachinesgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
