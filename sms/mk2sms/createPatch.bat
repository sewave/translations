@echo off 
set T_FILENAME="TR_Mortal Kombat 2 (E) [!].sms"
set S_FILENAME="Mortal Kombat 2 (E) [!].sms"
set SCRIPTNAME="mk2sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
