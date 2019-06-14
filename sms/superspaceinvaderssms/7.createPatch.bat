@echo off
set T_FILENAME="TR_Super Space Invaders (E) [!].sms"
set S_FILENAME="Super Space Invaders (E) [!].sms"
set SCRIPTNAME="superspaceinvaderssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
