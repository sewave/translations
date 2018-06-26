@echo off
set T_FILENAME="TR_Shadow of the Beast (E) [!].sms"
set S_FILENAME="Shadow of the Beast (E) [!].sms"
set SCRIPTNAME="shadowofthebeastsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
