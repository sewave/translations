@echo off
set T_FILENAME="TR_Pyramid (AVE) (PRG1) [!].nes"
set S_FILENAME="Pyramid (AVE) (PRG1) [!].nes"
set SCRIPTNAME="pyramidnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
