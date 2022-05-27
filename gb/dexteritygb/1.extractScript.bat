@echo off
set T_FILENAME="Dexterity (USA, Europe).gb"
set SCRIPTNAME="dexteritygb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
