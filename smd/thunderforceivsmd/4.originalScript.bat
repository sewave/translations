@echo off
set T_FILENAME="Thunder Force IV (E) [c][!].bin"
set SCRIPTNAME="thunderforceivsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
