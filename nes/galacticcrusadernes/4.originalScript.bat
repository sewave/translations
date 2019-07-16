@echo off
set T_FILENAME="Galactic Crusader (Bunch) [!].nes"
set SCRIPTNAME="galacticcrusadernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
