@echo off
set T_FILENAME="TR_Wonder Boy in Monster World (E) [!].sms"
set S_FILENAME="Wonder Boy in Monster World (E) [!].sms"
set SCRIPTNAME="wonderboyinmonsterworldsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
