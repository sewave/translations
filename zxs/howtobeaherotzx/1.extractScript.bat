@echo off
set T_FILENAME="How To Be A Hero.tzx"
set SCRIPTNAME="howtobeaherotzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
