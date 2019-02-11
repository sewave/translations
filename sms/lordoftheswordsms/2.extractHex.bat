@echo off
set T_FILENAME="TR_Lord of the Sword (USA, Europe).sms"
set SCRIPTNAME="lordoftheswordsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex eaed:218,15549:1540
pause
