@echo off
set T_FILENAME="TR_Phantom 2040 (U) [!].gg"
set SCRIPTNAME="phantom2040gg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 78000:120
pause
