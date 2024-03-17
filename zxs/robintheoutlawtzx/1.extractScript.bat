@echo off
set T_FILENAME="Robin The Outlaw.tzx"
set SCRIPTNAME="robintheoutlawtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
