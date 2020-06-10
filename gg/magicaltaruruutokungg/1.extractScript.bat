@echo off
set T_FILENAME="Magical Taruruuto-kun (Japan).gg"
set SCRIPTNAME="magicaltaruruutokungg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
