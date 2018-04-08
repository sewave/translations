@echo off
set T_FILENAME="TR_Sunman (E) (Prototype).nes"
set SCRIPTNAME="sunmannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 23410-23710,26C10-26D10,32A30-32D30,34F00:10,35000:10,348E0:10,34A30:20,350F0:10,351F0:10,
pause
