@echo off
set T_FILENAME="TR_Ghosts 'N Goblins (U) [C][!].gbc"
set SCRIPTNAME="ghostsngoblinsgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
