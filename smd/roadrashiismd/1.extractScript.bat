@echo off
set T_FILENAME="Road Rash II (USA, Europe).md"
set SCRIPTNAME="roadrashiismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
