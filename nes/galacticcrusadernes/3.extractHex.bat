@echo off
set T_FILENAME="TR_Galactic Crusader (Bunch) [!].nes"
set SCRIPTNAME="galacticcrusadernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E980-EC90
pause
