@echo off
set T_FILENAME="TR_Strider (UE) [!].sms"
set S_FILENAME="Strider (UE) [!].sms"
set SCRIPTNAME="stridersms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
