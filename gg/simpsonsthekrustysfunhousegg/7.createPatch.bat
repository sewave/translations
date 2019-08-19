@echo off
set T_FILENAME="TR_Simpsons, The - Krusty's Fun House (U) [!].gg"
set S_FILENAME="Simpsons, The - Krusty's Fun House (U) [!].gg"
set SCRIPTNAME="simpsonsthekrustysfunhousegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
