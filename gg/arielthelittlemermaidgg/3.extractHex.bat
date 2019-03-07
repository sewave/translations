@echo off
set T_FILENAME="TR_Ariel - The Little Mermaid (U) [!].gg"
set SCRIPTNAME="arielthelittlemermaidgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 16D40:200,21740:2000,38540:800
pause
