@echo off 
set T_FILENAME="TR_R.C. Grand Prix (UE) [!].sms"
set S_FILENAME="R.C. Grand Prix (UE) [!].sms"
set SCRIPTNAME="rcgrandprix"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
