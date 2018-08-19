@echo off 
set T_FILENAME="TR_Fantasy Zone II - The Tears of Opa-Opa (UE) [!].sms"
set S_FILENAME="Fantasy Zone II - The Tears of Opa-Opa (UE) [!].sms"
set SCRIPTNAME="fantasyzone2sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
