@echo off
set T_FILENAME="TR_Don Doko Don (Japan).nes"
set SCRIPTNAME="dondokodonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4FEF0:10,2B450:40,4EE10:90,3F910:100,3FE50:30,4BBB0:40,4DA30:130,4DC20:30,4CE10:190
pause
