@echo off
set T_FILENAME="Dragon's Lair (USA) (Proto) (June, 1994).md"
set SCRIPTNAME="dragonslairsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
