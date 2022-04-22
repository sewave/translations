@echo off
set T_FILENAME="TR_Penguin Adventure (Japan, Europe).rom"
set S_FILENAME="Penguin Adventure (Japan, Europe).rom"
set SCRIPTNAME="penguinadventurerom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
