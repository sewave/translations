@echo off
set T_FILENAME="TR_Mercs (E) [!].sms"
set S_FILENAME="Mercs (E) [!].sms"
set SCRIPTNAME="mercssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
