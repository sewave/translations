@echo off
set T_FILENAME="TR_Ms. Pac-man (E) [!].sms"
set S_FILENAME="Ms. Pac-man (E) [!].sms"
set SCRIPTNAME="mspacmansms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
