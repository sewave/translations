@echo off 
set T_FILENAME="TR_Double Hawk (E) [!].sms"
set S_FILENAME="Double Hawk (E) [!].sms"
set SCRIPTNAME="dhawksms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
