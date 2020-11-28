@echo off
set T_FILENAME="Three Weeks In Paradise - 128k.tap"
set SCRIPTNAME="threeweeksinparadise128ktap"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
