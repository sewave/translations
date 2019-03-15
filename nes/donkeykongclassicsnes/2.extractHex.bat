@echo off
set T_FILENAME="TR_Donkey Kong Classics (U) [!].nes"
set SCRIPTNAME="donkeykongclassicsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9290:10,9D10:30,B290:10,B8E0:30,
pause
