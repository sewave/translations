@echo off
set T_FILENAME="F-15 Strike Eagle (USA, Europe).gg"
set SCRIPTNAME="f15strikeeaglegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
