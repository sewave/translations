@echo off 
set T_FILENAME="TR_Hang-On (E) [!].sms"
set S_FILENAME="Hang-On (E) [!].sms"
set SCRIPTNAME="hangonsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
