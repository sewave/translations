@echo off
set T_FILENAME="TR_Mega SWIV (E).bin"
set S_FILENAME="Mega SWIV (E).bin"
set SCRIPTNAME="megaswivsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
