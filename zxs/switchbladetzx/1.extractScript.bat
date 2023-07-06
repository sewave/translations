@echo off
set T_FILENAME="Switch Blade.tzx"
set SCRIPTNAME="switchbladetzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
