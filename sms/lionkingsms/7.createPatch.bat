@echo off
set T_FILENAME="TR_Lion King, The (E) [!].sms"
set S_FILENAME="Lion King, The (E) [!].sms"
set SCRIPTNAME="lionkingsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
