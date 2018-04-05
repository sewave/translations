@echo off
set T_FILENAME="TR_Alex Kidd in Shinobi World (UE) [!].sms"
set S_FILENAME="Alex Kidd in Shinobi World (UE) [!].sms"
set SCRIPTNAME="alexkiddshinobi"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
