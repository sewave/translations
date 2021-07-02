@echo off
set T_FILENAME="Batman Returns (USA, Europe).lnx"
set SCRIPTNAME="batmanreturnslnx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
