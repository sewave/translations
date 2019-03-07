@echo off
set T_FILENAME="TR_Ariel - The Little Mermaid (U) [!].gg"
set S_FILENAME="Ariel - The Little Mermaid (U) [!].gg"
set SCRIPTNAME="arielthelittlemermaidgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
