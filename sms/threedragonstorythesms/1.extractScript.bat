@echo off
set T_FILENAME="Three Dragon Story, The (K).sms"
set SCRIPTNAME="threedragonstorythesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
