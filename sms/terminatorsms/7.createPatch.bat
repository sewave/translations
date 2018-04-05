@echo off
set T_FILENAME="TR_Terminator, The (E) [!].sms"
set S_FILENAME="Terminator, The (E) [!].sms"
set SCRIPTNAME="terminatorsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
