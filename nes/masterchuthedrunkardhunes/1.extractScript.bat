@echo off
set T_FILENAME="Master Chu & The Drunkard Hu (Color Dreams) [!].nes"
set SCRIPTNAME="masterchuthedrunkardhunes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
