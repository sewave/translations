@echo off
set T_FILENAME="TR_Dash Galaxy in the Alien Asylum (U) [!].nes"
set S_FILENAME="Dash Galaxy in the Alien Asylum (U) [!].nes"
set SCRIPTNAME="dashgalaxyinthealienasylumnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
