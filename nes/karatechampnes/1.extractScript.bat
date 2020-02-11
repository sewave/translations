@echo off
set T_FILENAME="Karate Champ (USA) (Rev A).nes"
set SCRIPTNAME="karatechampnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
