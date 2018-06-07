@echo off
set T_FILENAME="TR_Bubble Bobble (U) [!].nes"
set SCRIPTNAME="bubblebobblenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
