@echo off
set T_FILENAME="TR_Frogger (Prototype) [!].gg"
set S_FILENAME="Frogger (Prototype) [!].gg"
set SCRIPTNAME="froggergg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
