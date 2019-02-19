@echo off
set T_FILENAME="TR_Columns (UE) [!].sms"
set S_FILENAME="Columns (UE) [!].sms"
set SCRIPTNAME="columnssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
