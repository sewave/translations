@echo off
set T_FILENAME="Ariel - The Little Mermaid (UE) [!].gen"
set SCRIPTNAME="arielthelittlemermaidsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
