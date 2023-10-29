@echo off
set T_FILENAME="F-15 Strike Eagle (USA, Europe).gb"
set SCRIPTNAME="f15strikeeaglegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
