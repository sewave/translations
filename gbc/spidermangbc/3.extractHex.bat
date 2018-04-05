@echo off
set T_FILENAME="TR_Spider-Man (U) [C][!].gbc"
set SCRIPTNAME="spidermangb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 41B0-43B0,31FB0:50,3DFB0:50,49FB0:50,55FB0:50,61FB0:50,61D20:50,6DFB0:50,79FB0:50,85FB0:50,91FB0:50,9DFB0:50
pause
