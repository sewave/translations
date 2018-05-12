@echo off
set T_FILENAME="TR_Jurassic Park (E) [!].sms"
set S_FILENAME="Jurassic Park (E) [!].sms"
set SCRIPTNAME="jurassicparksms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
