@echo off
set T_FILENAME="TR_Rainbow Islands (E) [!].sms"
set S_FILENAME="Rainbow Islands (E) [!].sms"
set SCRIPTNAME="rainbowislandssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
