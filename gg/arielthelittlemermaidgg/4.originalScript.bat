@echo off
set T_FILENAME="Ariel - The Little Mermaid (U) [!].gg"
set SCRIPTNAME="arielthelittlemermaidgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
