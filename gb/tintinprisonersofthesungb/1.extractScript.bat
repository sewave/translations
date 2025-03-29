@echo off
set T_FILENAME="Tintin - Prisoners of the Sun (Europe) (En,Fr,De).gb"
set SCRIPTNAME="tintinprisonersofthesungb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
