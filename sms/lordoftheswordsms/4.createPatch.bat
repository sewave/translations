@echo off
set T_FILENAME="TR_Lord of the Sword (USA, Europe).sms"
set S_FILENAME="Lord of the Sword (USA, Europe).sms"
set SCRIPTNAME="lordoftheswordsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
