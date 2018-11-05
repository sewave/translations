@echo off
set T_FILENAME="TR_Captain Silver (U) [!].sms"
set S_FILENAME="Captain Silver (U) [!].sms"
set SCRIPTNAME="captainsilversms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
