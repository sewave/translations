@echo off 
set T_FILENAME="TR_Mortal Kombat (E) [!].sms"
set S_FILENAME="Mortal Kombat (E) [!].sms"
set SCRIPTNAME="mk1sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
