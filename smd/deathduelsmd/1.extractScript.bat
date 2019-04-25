@echo off
set T_FILENAME="Death Duel (U) [!].bin"
set SCRIPTNAME="deathduelsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
