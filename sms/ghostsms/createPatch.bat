@echo off 
set T_FILENAME="TR_Ghostbusters (UE) [!].sms"
set S_FILENAME="Ghostbusters (UE) [!].sms"
set SCRIPTNAME="ghostsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
