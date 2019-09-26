@echo off
set T_FILENAME="Magical Puzzle Popils (World) (En,Ja).gg"
set SCRIPTNAME="magicalpuzzlepopilsgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
