@echo off
set T_FILENAME="Kung Food (USA, Europe).lnx"
set SCRIPTNAME="kungfoodlnx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
