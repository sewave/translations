@echo off
set T_FILENAME="TR_Bubble Bobble (U) [!].gg"
set SCRIPTNAME="bubblebobblegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
