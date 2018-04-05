@echo off
set T_FILENAME="TR_Battlemaniacs (B) [!].sms"
set S_FILENAME="Battlemaniacs (B) [!].sms"
set SCRIPTNAME="battlemaniacssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
