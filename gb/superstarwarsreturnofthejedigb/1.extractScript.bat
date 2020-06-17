@echo off
set T_FILENAME="Super Star Wars - Return of the Jedi (USA, Europe) (SGB Enhanced).gb"
set SCRIPTNAME="superstarwarsreturnofthejedigb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
