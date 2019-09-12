@echo off
set T_FILENAME="TR_Mission Cobra (Bunch) [!].nes"
set S_FILENAME="Mission Cobra (Bunch) [!].nes"
set SCRIPTNAME="missioncobranes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
