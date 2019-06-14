@echo off
set T_FILENAME="TR_Spacegun (E) [!].sms"
set S_FILENAME="Spacegun (E) [!].sms"
set SCRIPTNAME="spacegunsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
