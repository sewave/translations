@echo off
set T_FILENAME="James Bond 007 - The Duel (UE) [!].gen"
set SCRIPTNAME="jamesbond007theduelsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
