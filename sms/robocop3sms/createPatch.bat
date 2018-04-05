@echo off 
set T_FILENAME="TR_Robocop 3 (E) [!].sms"
set S_FILENAME="Robocop 3 (E) [!].sms"
set SCRIPTNAME="robocop3sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
