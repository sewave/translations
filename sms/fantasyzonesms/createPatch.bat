@echo off 
set T_FILENAME="TR_Fantasy Zone (UE) [!].sms"
set S_FILENAME="Fantasy Zone (UE) [!].sms"
set SCRIPTNAME="fantasyzonesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
