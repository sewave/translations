@echo off
set T_FILENAME="Addams Family, The (Europe).sms"
set SCRIPTNAME="addamsfamilythesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
