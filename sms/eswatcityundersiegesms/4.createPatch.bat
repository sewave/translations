@echo off
set T_FILENAME="TR_E-SWAT - City Under Siege (UE) [!].sms"
set S_FILENAME="E-SWAT - City Under Siege (UE) [!].sms"
set SCRIPTNAME="eswatcityundersiegesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
