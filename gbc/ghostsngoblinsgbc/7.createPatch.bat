@echo off
set T_FILENAME="TR_Ghosts 'N Goblins (U) [C][!].gbc"
set S_FILENAME="Ghosts 'N Goblins (U) [C][!].gbc"
set SCRIPTNAME="ghostsngoblinsgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
