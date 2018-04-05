@echo off
set T_FILENAME="TR_Taz-Mania (E) [!].sms"
set S_FILENAME="Taz-Mania (E) [!].sms"
set SCRIPTNAME="tazmaniasms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
