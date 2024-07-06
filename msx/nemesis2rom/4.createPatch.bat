@echo off
set T_FILENAME="TR_Nemesis 2 (Japan, Europe) (Alt 1).rom"
set S_FILENAME="Nemesis 2 (Japan, Europe) (Alt 1).rom"
set SCRIPTNAME="nemesis2rom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
