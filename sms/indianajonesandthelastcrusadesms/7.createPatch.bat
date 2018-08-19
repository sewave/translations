@echo off
set T_FILENAME="TR_Indiana Jones and the Last Crusade (UE) [!].sms"
set S_FILENAME="Indiana Jones and the Last Crusade (UE) [!].sms"
set SCRIPTNAME="indianajonesandthelastcrusadesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
