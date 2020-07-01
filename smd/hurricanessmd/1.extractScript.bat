@echo off
set T_FILENAME="Hurricanes (Europe).md"
set SCRIPTNAME="hurricanessmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
