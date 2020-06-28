@echo off
set T_FILENAME="TR_Robodemons (Color Dreams) [!].nes"
set S_FILENAME="Robodemons (Color Dreams) [!].nes"
set SCRIPTNAME="robodemonsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
