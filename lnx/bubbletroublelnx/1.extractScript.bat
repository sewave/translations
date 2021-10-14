@echo off
set T_FILENAME="Bubble Trouble (USA, Europe).lnx"
set SCRIPTNAME="bubbletroublelnx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
