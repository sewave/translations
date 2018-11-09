@echo off
set T_FILENAME="Chuck Rock II - Son of Chuck (E) [!].sms"
set SCRIPTNAME="chuckrockiisonofchucksms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
