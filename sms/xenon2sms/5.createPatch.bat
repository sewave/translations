@echo off
set T_FILENAME="TR_Xenon 2 (E) (Image Works) [!].sms"
set S_FILENAME="Xenon 2 (E) (Image Works) [!].sms"
set SCRIPTNAME="xenon2sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
