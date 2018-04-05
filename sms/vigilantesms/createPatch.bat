@echo off 
set T_FILENAME="TR_Vigilante (UE) [!].sms"
set S_FILENAME="Vigilante (UE) [!].sms"
set SCRIPTNAME="vigilantesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
