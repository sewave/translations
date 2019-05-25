@echo off
set T_FILENAME="Konami's Soccer (1985) (Konami) (J).rom"
set SCRIPTNAME="konamissoccerrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
