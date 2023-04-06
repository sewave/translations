@echo off
set T_FILENAME="Sabrina - The Animated Series - Spooked! (USA, Europe).gbc"
set SCRIPTNAME="sabrinatheanimatedseriesspookedgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
