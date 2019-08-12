@echo off
set T_FILENAME="James Bond 007 - The Duel (U) [!].gg"
set SCRIPTNAME="jamesbond007theduelgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
