@echo off
set T_FILENAME="Hugo 2 1-2 (Germany) (GB Compatible).gbc"
set SCRIPTNAME="hugo212gbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
