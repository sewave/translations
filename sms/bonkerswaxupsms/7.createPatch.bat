@echo off
set T_FILENAME="TR_Bonkers Wax Up! (UE) [!].sms"
set S_FILENAME="Bonkers Wax Up! (UE) [!].sms"
set SCRIPTNAME="bonkerswaxupsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
