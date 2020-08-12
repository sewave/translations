@echo off
set T_FILENAME="California Games (USA, Europe).md"
set SCRIPTNAME="californiagamessmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
