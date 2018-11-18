@echo off
set T_FILENAME="TR_Pac-Mania (E) [!].sms"
set S_FILENAME="Pac-Mania (E) [!].sms"
set SCRIPTNAME="pacmaniasms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
