@echo off 
set T_FILENAME="TR_Golden Axe (UE) [!].sms"
set S_FILENAME="Golden Axe (UE) [!].sms"
set SCRIPTNAME="gaxesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
