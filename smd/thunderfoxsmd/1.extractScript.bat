@echo off
set T_FILENAME="Thunder Fox (U) [c][!].bin"
set SCRIPTNAME="thunderfoxsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
