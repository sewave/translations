@echo off
set T_FILENAME="TR_Chuck Rock II - Son of Chuck (E) [!].sms"
set S_FILENAME="Chuck Rock II - Son of Chuck (E) [!].sms"
set SCRIPTNAME="chuckrockiisonofchucksms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
