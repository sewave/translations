@echo off
set T_FILENAME="TR_Ninja Gaiden (E) [!].sms"
set S_FILENAME="Ninja Gaiden (E) [!].sms"
set SCRIPTNAME="ninjagaidensms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
