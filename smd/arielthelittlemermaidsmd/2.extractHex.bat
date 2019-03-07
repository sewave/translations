@echo off
set T_FILENAME="TR_Ariel - The Little Mermaid (UE) [!].gen"
set SCRIPTNAME="arielthelittlemermaidsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
