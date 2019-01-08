@echo off
set T_FILENAME="TR_Donkey Kong (U) (PRG1) [!].nes"
set SCRIPTNAME="donkeykongnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5D10:30,5290:10,5150:100
pause
