@echo off
set T_FILENAME="TR_Zool (E) [!].sms"
set S_FILENAME="Zool (E) [!].sms"
set SCRIPTNAME="zoolsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
