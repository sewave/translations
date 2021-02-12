@echo off
set T_FILENAME="thedead.gb"
set SCRIPTNAME="thedeadgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
