@echo off
set T_FILENAME="Lord of the Sword (USA, Europe).sms"
set SCRIPTNAME="lordoftheswordsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
