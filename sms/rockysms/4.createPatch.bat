@echo off
set T_FILENAME="TR_Rocky (World).sms"
set S_FILENAME="Rocky (World).sms"
set SCRIPTNAME="rockysms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
