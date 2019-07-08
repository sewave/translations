@echo off
set T_FILENAME="TR_Fatal Labyrinth (JU) [!].bin"
set S_FILENAME="Fatal Labyrinth (JU) [!].bin"
set SCRIPTNAME="fatallabyrinthsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
