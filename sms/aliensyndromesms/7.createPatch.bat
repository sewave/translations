@echo off
set T_FILENAME="TR_Alien Syndrome (UE) [!].sms"
set S_FILENAME="Alien Syndrome (UE) [!].sms"
set SCRIPTNAME="aliensyndromesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
