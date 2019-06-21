@echo off
set T_FILENAME="TR_Woody Pop (J) [!].sms"
set S_FILENAME="Woody Pop (J) [!].sms"
set SCRIPTNAME="woodypopsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
