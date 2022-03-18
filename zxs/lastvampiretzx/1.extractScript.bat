@echo off
set T_FILENAME="Last Vampire.tzx"
set SCRIPTNAME="lastvampiretzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
