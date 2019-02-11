@echo off
set T_FILENAME="TR_Micro Machines (E) [!].sms"
set S_FILENAME="Micro Machines (E) [!].sms"
set SCRIPTNAME="micromachinessms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
