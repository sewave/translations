@echo off
set T_FILENAME="Sega World Tournament Golf (EBK) [!].sms"
set SCRIPTNAME="segaworldtournamentgolfsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
