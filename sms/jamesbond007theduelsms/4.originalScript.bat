@echo off
set T_FILENAME="James Bond 007 - The Duel (E).sms"
set SCRIPTNAME="jamesbond007theduelsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
