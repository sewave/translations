@echo off
set T_FILENAME="Sky Jaguar - Konami (1984) [RC-721] [GoodMSX] [2099].rom"
set SCRIPTNAME="skyjaguarkonamirom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
