@echo off 
set T_FILENAME="TR_Populous (E) [!].sms"
set S_FILENAME="Populous (E) [!].sms"
set SCRIPTNAME="populoussms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
