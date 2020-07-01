@echo off
set T_FILENAME="Hurricanes (Europe).gg"
set SCRIPTNAME="hurricanesgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
