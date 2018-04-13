@echo off
set T_FILENAME="TR_Kenseiden (UE) [!].sms"
set S_FILENAME="Kenseiden (UE) [!].sms"
set SCRIPTNAME="kenseidensms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
