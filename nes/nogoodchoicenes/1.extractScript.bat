@echo off
set T_FILENAME="nogoodchoice.nes"
set SCRIPTNAME="nogoodchoicenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
