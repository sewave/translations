@echo off
set T_FILENAME="Sabrina - The Animated Series - Zapped! (USA, Europe).gbc"
set SCRIPTNAME="sabrinatheanimatedserieszappedgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
