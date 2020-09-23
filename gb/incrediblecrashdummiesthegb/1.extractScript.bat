@echo off
set T_FILENAME="Incredible Crash Dummies, The (USA, Europe).gb"
set SCRIPTNAME="incrediblecrashdummiesthegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
