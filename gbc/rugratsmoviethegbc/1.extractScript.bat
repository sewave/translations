@echo off
set T_FILENAME="Rugrats Movie, The (USA) (SGB Enhanced) (GB Compatible).gbc"
set SCRIPTNAME="rugratsmoviethegbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
