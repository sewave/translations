@echo off
set T_FILENAME="TR_Magmax (U) [!].nes"
set SCRIPTNAME="magmaxnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8200:10
pause
