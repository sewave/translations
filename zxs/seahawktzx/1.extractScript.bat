@echo off
set T_FILENAME="Sea Hawk.tzx"
set SCRIPTNAME="seahawktzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
