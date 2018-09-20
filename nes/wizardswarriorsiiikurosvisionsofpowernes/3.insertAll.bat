@echo off
set T_FILENAME="TR_Wizards & Warriors III - Kuros - Visions of Power (U) [!].nes"
set S_FILENAME="Wizards & Warriors III - Kuros - Visions of Power (U) [!].nes"
set SCRIPTNAME="wizardswarriorsiiikurosvisionsofpowernes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
