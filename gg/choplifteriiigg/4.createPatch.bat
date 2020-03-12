@echo off
set T_FILENAME="TR_Choplifter III (U) [!].gg"
set S_FILENAME="Choplifter III (U) [!].gg"
set SCRIPTNAME="choplifteriiigg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
