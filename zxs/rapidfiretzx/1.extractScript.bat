@echo off
set T_FILENAME="Rapid Fire.tzx"
set SCRIPTNAME="rapidfiretzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
