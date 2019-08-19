@echo off
set T_FILENAME="TR_Krusty's Super Funhouse (UE) (REV01) [!].gen"
set S_FILENAME="Krusty's Super Funhouse (UE) (REV01) [!].gen"
set SCRIPTNAME="krustyssuperfunhousesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
