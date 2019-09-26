@echo off
set T_FILENAME="Magical Puzzle Popils (World) (En,Ja).gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
