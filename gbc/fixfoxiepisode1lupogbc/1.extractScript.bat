@echo off
set T_FILENAME="Fix & Foxi - Episode 1 Lupo (Europe) (En,Fr,De).gbc"
set SCRIPTNAME="fixfoxiepisode1lupogbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
