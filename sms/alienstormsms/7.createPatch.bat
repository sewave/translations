@echo off
set T_FILENAME="TR_Alien Storm (E) [!].sms"
set S_FILENAME="Alien Storm (E) [!].sms"
set SCRIPTNAME="alienstormsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
