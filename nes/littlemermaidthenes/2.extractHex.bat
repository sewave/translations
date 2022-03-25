@echo off
set T_FILENAME="TR_Little Mermaid, The (USA).nes"
set SCRIPTNAME="littlemermaidthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 177B0:20,177F0:10,17BC0:30
pause
