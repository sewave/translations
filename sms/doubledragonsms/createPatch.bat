@echo off 
set T_FILENAME="TR_Double Dragon (UE) [!].sms"
set S_FILENAME="Double Dragon (UE) [!].sms"
set SCRIPTNAME="doubledragonsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
