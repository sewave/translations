@echo off
set T_FILENAME="TR_Sagaia (E) [!].sms"
set S_FILENAME="Sagaia (E) [!].sms"
set SCRIPTNAME="sagaiasms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
