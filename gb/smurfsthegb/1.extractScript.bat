@echo off
set T_FILENAME="Smurfs, The (USA, Europe) (En,Fr,De) (Rev A) (SGB Enhanced).gb"
set SCRIPTNAME="smurfsthegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
