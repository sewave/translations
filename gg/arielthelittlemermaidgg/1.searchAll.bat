@echo off
set T_FILENAME="Ariel - The Little Mermaid (U) [!].gg"
set SCRIPTNAME="arielthelittlemermaidgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
