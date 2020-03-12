@echo off
set T_FILENAME="Tomb Raider - Curse of the Sword (U) [C][!].gbc"
set SCRIPTNAME="tombraidercurseoftheswordgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
