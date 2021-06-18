@echo off
set T_FILENAME="Road Rash (USA, Europe).md"
set SCRIPTNAME="roadrashsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
