@echo off
set T_FILENAME="TR_Dragon - The Bruce Lee Story (E) [!].sms"
set S_FILENAME="Dragon - The Bruce Lee Story (E) [!].sms"
set SCRIPTNAME="dragonbrucesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
