@echo off
set T_FILENAME="Road Rash (U).gg"
set SCRIPTNAME="roadrashgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
