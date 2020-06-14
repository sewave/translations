@echo off
set T_FILENAME="TR_Panzer Dragoon Mini (J) [!].gg"
set S_FILENAME="Panzer Dragoon Mini (J) [!].gg"
set SCRIPTNAME="panzerdragoonminigg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
