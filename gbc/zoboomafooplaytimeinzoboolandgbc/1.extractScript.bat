@echo off
set T_FILENAME="Zoboomafoo - Playtime in Zobooland (USA).gbc"
set SCRIPTNAME="zoboomafooplaytimeinzoboolandgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
