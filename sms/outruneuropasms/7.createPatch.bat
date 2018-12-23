@echo off
set T_FILENAME="TR_OutRun Europa (E) [!].sms"
set S_FILENAME="OutRun Europa (E) [!].sms"
set SCRIPTNAME="outruneuropasms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
