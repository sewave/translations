@echo off
set T_FILENAME="Contra Advance - The Alien Wars EX (USA).gba"
set SCRIPTNAME="contraadvancethealienwarsexgba"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
