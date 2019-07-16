@echo off
set T_FILENAME="TR_Galactic Crusader (Bunch) [!].nes"
set S_FILENAME="Galactic Crusader (Bunch) [!].nes"
set SCRIPTNAME="galacticcrusadernes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
