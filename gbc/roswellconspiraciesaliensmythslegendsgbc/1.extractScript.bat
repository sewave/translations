@echo off
set T_FILENAME="Roswell Conspiracies - Aliens, Myths & Legends (USA) (En,Fr,De).gbc"
set SCRIPTNAME="roswellconspiraciesaliensmythslegendsgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
