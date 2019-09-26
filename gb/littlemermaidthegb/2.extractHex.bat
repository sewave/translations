@echo off
set T_FILENAME="TR_Little Mermaid, The (U) [!].gb"
set SCRIPTNAME="littlemermaidthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
