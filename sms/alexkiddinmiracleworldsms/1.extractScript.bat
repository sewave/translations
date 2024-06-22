@echo off
set T_FILENAME="Alex Kidd in Miracle World (USA, Europe) (Rev 1).sms"
set SCRIPTNAME="alexkiddinmiracleworldsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
