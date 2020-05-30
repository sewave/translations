@echo off
set T_FILENAME="TR_X-Men - Mojo World (Brazil).sms"
set SCRIPTNAME="xmenmojoworldsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
