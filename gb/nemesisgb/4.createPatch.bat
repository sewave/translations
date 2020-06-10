@echo off
set T_FILENAME="TR_Nemesis (U) [!].gb"
set S_FILENAME="Nemesis (U) [!].gb"
set SCRIPTNAME="nemesisgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
