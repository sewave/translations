@echo off
set T_FILENAME="TR_Paperboy (U) [!].sms"
set S_FILENAME="Paperboy (U) [!].sms"
set SCRIPTNAME="paperboysms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
