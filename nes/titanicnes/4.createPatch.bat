@echo off
set T_FILENAME="TR_Titanic (NJ031) (Ch) [T+ENG].nes"
set S_FILENAME="Titanic (NJ031) (Ch) [!].nes"
set SCRIPTNAME="titanicnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
