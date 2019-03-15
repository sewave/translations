@echo off
set T_FILENAME="TR_Donkey Kong 3 (U) [!].nes"
set SCRIPTNAME="donkeykong3nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4E50:10,5010:300
pause
