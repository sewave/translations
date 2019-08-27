@echo off
set T_FILENAME="Tennis Ace (Europe).sms"
set SCRIPTNAME="tennisacesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
