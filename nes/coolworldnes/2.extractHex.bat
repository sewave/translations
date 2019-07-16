@echo off
set T_FILENAME="TR_Cool World (U) [!].nes"
set SCRIPTNAME="coolworldnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 230C0:800
pause
