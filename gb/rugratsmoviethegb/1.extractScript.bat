@echo off
set T_FILENAME="Rugrats Movie, The (USA) (SGB Enhanced).gb"
set SCRIPTNAME="rugratsmoviethegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
