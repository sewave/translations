@echo off
set T_FILENAME="X-Men - Mojo World (Brazil).sms"
set SCRIPTNAME="xmenmojoworldsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
