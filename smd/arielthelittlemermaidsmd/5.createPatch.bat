@echo off
set T_FILENAME="TR_Ariel - The Little Mermaid (UE) [!].gen"
set S_FILENAME="Ariel - The Little Mermaid (UE) [!].gen"
set SCRIPTNAME="arielthelittlemermaidsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
