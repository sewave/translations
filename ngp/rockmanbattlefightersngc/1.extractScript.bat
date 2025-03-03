@echo off
set T_FILENAME="Rockman - Battle & Fighters (Japan) [T+ENG].ngc"
set SCRIPTNAME="rockmanbattlefightersngc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
